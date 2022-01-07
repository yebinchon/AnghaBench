
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int near; size_t* run_index; int* C; int maxval; int range; int twonear; } ;
struct TYPE_8__ {int gb; } ;
typedef TYPE_1__ MJpegDecodeContext ;
typedef TYPE_2__ JLSState ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FFABS (int) ;
 int R (void*,int) ;
 int W (void*,int,int) ;
 int av_assert0 (int) ;
 int av_clip (int,int ,int) ;
 int av_log (int *,int ,char*) ;
 int ff_jpegls_quantize (TYPE_2__*,int) ;
 int* ff_log2_run ;
 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int get_bits_long (int *,int) ;
 int ls_get_code_regular (int *,TYPE_2__*,int) ;
 int ls_get_code_runterm (int *,TYPE_2__*,int,int) ;
 int mid_pred (int,int,int) ;

__attribute__((used)) static inline int ls_decode_line(JLSState *state, MJpegDecodeContext *s,
                                  void *last, void *dst, int last2, int w,
                                  int stride, int comp, int bits)
{
    int i, x = 0;
    int Ra, Rb, Rc, Rd;
    int D0, D1, D2;

    while (x < w) {
        int err, pred;

        if (get_bits_left(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;


        Ra = x ? R(dst, x - stride) : R(last, x);
        Rb = R(last, x);
        Rc = x ? R(last, x - stride) : last2;
        Rd = (x >= w - stride) ? R(last, x) : R(last, x + stride);
        D0 = Rd - Rb;
        D1 = Rb - Rc;
        D2 = Rc - Ra;

        if ((FFABS(D0) <= state->near) &&
            (FFABS(D1) <= state->near) &&
            (FFABS(D2) <= state->near)) {
            int r;
            int RItype;


            while (get_bits1(&s->gb)) {
                int r;
                r = 1 << ff_log2_run[state->run_index[comp]];
                if (x + r * stride > w)
                    r = (w - x) / stride;
                for (i = 0; i < r; i++) {
                    W(dst, x, Ra);
                    x += stride;
                }

                if (r != 1 << ff_log2_run[state->run_index[comp]])
                    return 0;
                if (state->run_index[comp] < 31)
                    state->run_index[comp]++;
                if (x + stride > w)
                    return 0;
            }

            r = ff_log2_run[state->run_index[comp]];
            if (r)
                r = get_bits_long(&s->gb, r);
            if (x + r * stride > w) {
                r = (w - x) / stride;
            }
            for (i = 0; i < r; i++) {
                W(dst, x, Ra);
                x += stride;
            }

            if (x >= w) {
                av_log(((void*)0), AV_LOG_ERROR, "run overflow\n");
                av_assert0(x <= w);
                return AVERROR_INVALIDDATA;
            }


            Rb = R(last, x);
            RItype = (FFABS(Ra - Rb) <= state->near) ? 1 : 0;
            err = ls_get_code_runterm(&s->gb, state, RItype,
                                         ff_log2_run[state->run_index[comp]]);
            if (state->run_index[comp])
                state->run_index[comp]--;

            if (state->near && RItype) {
                pred = Ra + err;
            } else {
                if (Rb < Ra)
                    pred = Rb - err;
                else
                    pred = Rb + err;
            }
        } else {
            int context, sign;

            context = ff_jpegls_quantize(state, D0) * 81 +
                      ff_jpegls_quantize(state, D1) * 9 +
                      ff_jpegls_quantize(state, D2);
            pred = mid_pred(Ra, Ra + Rb - Rc, Rb);

            if (context < 0) {
                context = -context;
                sign = 1;
            } else {
                sign = 0;
            }

            if (sign) {
                pred = av_clip(pred - state->C[context], 0, state->maxval);
                err = -ls_get_code_regular(&s->gb, state, context);
            } else {
                pred = av_clip(pred + state->C[context], 0, state->maxval);
                err = ls_get_code_regular(&s->gb, state, context);
            }


            pred += err;
        }
        if (state->near) {
            if (pred < -state->near)
                pred += state->range * state->twonear;
            else if (pred > state->maxval + state->near)
                pred -= state->range * state->twonear;
            pred = av_clip(pred, 0, state->maxval);
        }

        pred &= state->maxval;
        W(dst, x, pred);
        x += stride;
    }

    return 0;
}
