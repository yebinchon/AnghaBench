
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ws_interval {int next; scalar_t__ ts_end; int amp; int type; size_t phi; size_t dphi; size_t ddphi; int channels; scalar_t__ damp; } ;
struct wavesynth_context {int cur_inter; scalar_t__ pink_pos; int* pink_pool; unsigned int* sin; int dither_state; struct ws_interval* inter; } ;
typedef scalar_t__ int64_t ;
typedef unsigned int int32_t ;


 scalar_t__ PINK_UNIT ;
 int SIN_BITS ;


 scalar_t__ lcg_next (int *) ;
 int pink_fill (struct wavesynth_context*) ;

__attribute__((used)) static void wavesynth_synth_sample(struct wavesynth_context *ws, int64_t ts,
                                   int32_t *channels)
{
    int32_t amp, val, *cv;
    struct ws_interval *in;
    int i, *last, pink;
    uint32_t c, all_ch = 0;

    i = ws->cur_inter;
    last = &ws->cur_inter;
    if (ws->pink_pos == PINK_UNIT)
        pink_fill(ws);
    pink = ws->pink_pool[ws->pink_pos++] >> 16;
    while (i >= 0) {
        in = &ws->inter[i];
        i = in->next;
        if (ts >= in->ts_end) {
            *last = i;
            continue;
        }
        last = &in->next;
        amp = in->amp >> 32;
        in->amp += in->damp;
        switch (in->type) {
            case 128:
                val = amp * ws->sin[in->phi >> (64 - SIN_BITS)];
                in->phi += in->dphi;
                in->dphi += in->ddphi;
                break;
            case 129:
                val = amp * (unsigned)pink;
                break;
            default:
                val = 0;
        }
        all_ch |= in->channels;
        for (c = in->channels, cv = channels; c; c >>= 1, cv++)
            if (c & 1)
                *cv += (unsigned)val;
    }
    val = (int32_t)lcg_next(&ws->dither_state) >> 16;
    for (c = all_ch, cv = channels; c; c >>= 1, cv++)
        if (c & 1)
            *cv += val;
}
