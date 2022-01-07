
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double qscale; scalar_t__ p_tex_bits; scalar_t__ i_tex_bits; } ;
typedef TYPE_1__ RateControlEntry ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static inline double qp2bits(RateControlEntry *rce, double qp)
{
    if (qp <= 0.0) {
        av_log(((void*)0), AV_LOG_ERROR, "qp<=0.0\n");
    }
    return rce->qscale * (double)(rce->i_tex_bits + rce->p_tex_bits + 1) / qp;
}
