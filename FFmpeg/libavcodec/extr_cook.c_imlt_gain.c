
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* now; } ;
typedef TYPE_1__ cook_gains ;
struct TYPE_11__ {int (* imdct_calc ) (TYPE_6__*,float*,float*) ;} ;
struct TYPE_10__ {float* mono_mdct_output; int samples_per_channel; int gain_size_factor; int (* interpolate ) (TYPE_2__*,float*,scalar_t__,scalar_t__) ;int (* imlt_window ) (TYPE_2__*,float*,TYPE_1__*,float*) ;TYPE_6__ mdct_ctx; } ;
typedef TYPE_2__ COOKContext ;


 int memcpy (float*,float*,int) ;
 int stub1 (TYPE_6__*,float*,float*) ;
 int stub2 (TYPE_2__*,float*,TYPE_1__*,float*) ;
 int stub3 (TYPE_2__*,float*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void imlt_gain(COOKContext *q, float *inbuffer,
                      cook_gains *gains_ptr, float *previous_buffer)
{
    float *buffer0 = q->mono_mdct_output;
    float *buffer1 = q->mono_mdct_output + q->samples_per_channel;
    int i;


    q->mdct_ctx.imdct_calc(&q->mdct_ctx, q->mono_mdct_output, inbuffer);

    q->imlt_window(q, buffer1, gains_ptr, previous_buffer);


    for (i = 0; i < 8; i++)
        if (gains_ptr->now[i] || gains_ptr->now[i + 1])
            q->interpolate(q, &buffer1[q->gain_size_factor * i],
                           gains_ptr->now[i], gains_ptr->now[i + 1]);


    memcpy(previous_buffer, buffer0,
           q->samples_per_channel * sizeof(*previous_buffer));
}
