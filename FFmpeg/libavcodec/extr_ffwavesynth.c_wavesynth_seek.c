
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ws_interval {scalar_t__ ts_start; scalar_t__ ts_end; int next; scalar_t__ ddphi; scalar_t__ damp; scalar_t__ amp0; scalar_t__ amp; scalar_t__ dphi0; scalar_t__ dphi; int phi; } ;
struct wavesynth_context {int cur_inter; int nb_inter; int next_inter; scalar_t__ next_ts; int cur_ts; int pink_pos; int pink_state; scalar_t__ pink_need; int dither_state; struct ws_interval* inter; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ INF_TS ;
 int PINK_UNIT ;
 int lcg_seek (int *,int) ;
 int phi_at (struct ws_interval*,scalar_t__) ;
 int pink_fill (struct wavesynth_context*) ;

__attribute__((used)) static void wavesynth_seek(struct wavesynth_context *ws, int64_t ts)
{
    int *last, i;
    struct ws_interval *in;

    last = &ws->cur_inter;
    for (i = 0; i < ws->nb_inter; i++) {
        in = &ws->inter[i];
        if (ts < in->ts_start)
            break;
        if (ts >= in->ts_end)
            continue;
        *last = i;
        last = &in->next;
        in->phi = phi_at(in, ts);
        in->dphi = in->dphi0 + (ts - in->ts_start) * in->ddphi;
        in->amp = in->amp0 + (ts - in->ts_start) * in->damp;
    }
    ws->next_inter = i;
    ws->next_ts = i < ws->nb_inter ? ws->inter[i].ts_start : INF_TS;
    *last = -1;
    lcg_seek(&ws->dither_state, (uint32_t)ts - (uint32_t)ws->cur_ts);
    if (ws->pink_need) {
        int64_t pink_ts_cur = (ws->cur_ts + PINK_UNIT - 1) & ~(PINK_UNIT - 1);
        int64_t pink_ts_next = ts & ~(PINK_UNIT - 1);
        int pos = ts & (PINK_UNIT - 1);
        lcg_seek(&ws->pink_state, (uint32_t)(pink_ts_next - pink_ts_cur) * 2);
        if (pos) {
            pink_fill(ws);
            ws->pink_pos = pos;
        } else {
            ws->pink_pos = PINK_UNIT;
        }
    }
    ws->cur_ts = ts;
}
