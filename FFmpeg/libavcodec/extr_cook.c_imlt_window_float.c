
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* previous; } ;
typedef TYPE_1__ cook_gains ;
struct TYPE_6__ {int samples_per_channel; float* mlt_window; } ;
typedef TYPE_2__ COOKContext ;


 float* pow2tab ;

__attribute__((used)) static void imlt_window_float(COOKContext *q, float *inbuffer,
                              cook_gains *gains_ptr, float *previous_buffer)
{
    const float fc = pow2tab[gains_ptr->previous[0] + 63];
    int i;







    for (i = 0; i < q->samples_per_channel; i++)
        inbuffer[i] = inbuffer[i] * fc * q->mlt_window[i] -
                      previous_buffer[i] * q->mlt_window[q->samples_per_channel - 1 - i];
}
