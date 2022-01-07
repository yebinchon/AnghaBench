
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* vector_clipf ) (float*,scalar_t__,int ,float,float) ;} ;
struct TYPE_5__ {scalar_t__ samples_per_channel; scalar_t__ mono_mdct_output; TYPE_1__ adsp; } ;
typedef TYPE_2__ COOKContext ;


 int FFALIGN (scalar_t__,int) ;
 int stub1 (float*,scalar_t__,int ,float,float) ;

__attribute__((used)) static void saturate_output_float(COOKContext *q, float *out)
{
    q->adsp.vector_clipf(out, q->mono_mdct_output + q->samples_per_channel,
                         FFALIGN(q->samples_per_channel, 8), -1.0f, 1.0f);
}
