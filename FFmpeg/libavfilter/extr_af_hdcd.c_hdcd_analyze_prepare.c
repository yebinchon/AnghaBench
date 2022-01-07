
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int rate; int _ana_snb; } ;
typedef TYPE_1__ hdcd_state ;


 scalar_t__ PEAK_EXT_LEVEL ;
 int TONEGEN16 (int,int,int,double) ;
 scalar_t__ abs (int) ;

__attribute__((used)) static void hdcd_analyze_prepare(hdcd_state *state, int32_t *samples, int count, int stride) {
    int n, f = 300;
    int so = state->rate / f;
    for (n = 0; n < count * stride; n += stride) {





        int32_t save = (abs(samples[n]) - PEAK_EXT_LEVEL >= 0) ? 2 : 0;
        save |= samples[n] & 1;
        samples[n] = TONEGEN16(state->_ana_snb, f, state->rate, 0.1);
        samples[n] = (samples[n] | 3) ^ ((~save) & 3);
        if (++state->_ana_snb > so) state->_ana_snb = 0;
    }
}
