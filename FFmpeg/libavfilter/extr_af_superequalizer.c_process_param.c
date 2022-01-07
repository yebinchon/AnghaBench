
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float lower; float upper; float gain; } ;
typedef TYPE_1__ EqParameter ;


 int NBANDS ;
 float* bands ;

__attribute__((used)) static void process_param(float *bc, EqParameter *param, float fs)
{
    int i;

    for (i = 0; i <= NBANDS; i++) {
        param[i].lower = i == 0 ? 0 : bands[i - 1];
        param[i].upper = i == NBANDS ? fs : bands[i];
        param[i].gain = bc[i];
    }
}
