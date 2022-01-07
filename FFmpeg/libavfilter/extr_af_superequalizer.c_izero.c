
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* fact; } ;
typedef TYPE_1__ SuperEqualizerContext ;


 int M ;
 float pow (float,int) ;

__attribute__((used)) static float izero(SuperEqualizerContext *s, float x)
{
    float ret = 1;
    int m;

    for (m = 1; m <= M; m++) {
        float t;

        t = pow(x / 2, m) / s->fact[m];
        ret += t*t;
    }

    return ret;
}
