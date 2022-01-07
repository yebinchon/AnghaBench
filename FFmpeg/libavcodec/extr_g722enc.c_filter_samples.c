
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int (* apply_qmf ) (int *,int*) ;} ;
struct TYPE_5__ {int prev_samples_pos; int * prev_samples; TYPE_1__ dsp; } ;
typedef TYPE_2__ G722Context ;


 int PREV_SAMPLES_BUF_SIZE ;
 int memmove (int *,int *,int) ;
 int stub1 (int *,int*) ;

__attribute__((used)) static inline void filter_samples(G722Context *c, const int16_t *samples,
                                  int *xlow, int *xhigh)
{
    int xout[2];
    c->prev_samples[c->prev_samples_pos++] = samples[0];
    c->prev_samples[c->prev_samples_pos++] = samples[1];
    c->dsp.apply_qmf(c->prev_samples + c->prev_samples_pos - 24, xout);
    *xlow = xout[0] + xout[1] >> 14;
    *xhigh = xout[0] - xout[1] >> 14;
    if (c->prev_samples_pos >= PREV_SAMPLES_BUF_SIZE) {
        memmove(c->prev_samples,
                c->prev_samples + c->prev_samples_pos - 22,
                22 * sizeof(c->prev_samples[0]));
        c->prev_samples_pos = 22;
    }
}
