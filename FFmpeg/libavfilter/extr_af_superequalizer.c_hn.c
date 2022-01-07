
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float upper; float gain; } ;
typedef TYPE_1__ EqParameter ;


 int NBANDS ;
 float hn_imp (int) ;
 float hn_lpf (int,float,float) ;

__attribute__((used)) static float hn(int n, EqParameter *param, float fs)
{
    float ret, lhn;
    int i;

    lhn = hn_lpf(n, param[0].upper, fs);
    ret = param[0].gain*lhn;

    for (i = 1; i < NBANDS + 1 && param[i].upper < fs / 2; i++) {
        float lhn2 = hn_lpf(n, param[i].upper, fs);
        ret += param[i].gain * (lhn2 - lhn);
        lhn = lhn2;
    }

    ret += param[i].gain * (hn_imp(n) - lhn);

    return ret;
}
