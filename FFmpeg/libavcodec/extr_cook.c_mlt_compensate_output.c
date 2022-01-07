
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cook_gains ;
struct TYPE_5__ {int (* saturate_output ) (TYPE_1__*,float*) ;} ;
typedef TYPE_1__ COOKContext ;


 int imlt_gain (TYPE_1__*,float*,int *,float*) ;
 int stub1 (TYPE_1__*,float*) ;

__attribute__((used)) static inline void mlt_compensate_output(COOKContext *q, float *decode_buffer,
                                         cook_gains *gains_ptr, float *previous_buffer,
                                         float *out)
{
    imlt_gain(q, decode_buffer, gains_ptr, previous_buffer);
    if (out)
        q->saturate_output(q, out);
}
