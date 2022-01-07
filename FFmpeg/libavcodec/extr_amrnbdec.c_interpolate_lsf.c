
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* weighted_vector_sumf ) (float*,float*,float*,double,double,int ) ;} ;
typedef TYPE_1__ ACELPVContext ;


 int LP_FILTER_ORDER ;
 int stub1 (float*,float*,float*,double,double,int ) ;

__attribute__((used)) static void interpolate_lsf(ACELPVContext *ctx, float lsf_q[4][LP_FILTER_ORDER], float *lsf_new)
{
    int i;

    for (i = 0; i < 4; i++)
        ctx->weighted_vector_sumf(lsf_q[i], lsf_q[3], lsf_new,
                                0.25 * (3 - i), 0.25 * (i + 1),
                                LP_FILTER_ORDER);
}
