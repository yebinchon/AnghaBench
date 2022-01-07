
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int blocksize; int windowed_samples; int (* lpc_compute_autocorr ) (int ,int ,int,double*) ;int (* lpc_apply_welch_window ) (int const*,int ,int ) ;} ;
typedef TYPE_1__ LPCContext ;


 int MAX_LPC_ORDER ;
 int compute_ref_coefs (double*,int,double*,int *) ;
 int stub1 (int const*,int ,int ) ;
 int stub2 (int ,int ,int,double*) ;

int ff_lpc_calc_ref_coefs(LPCContext *s,
                          const int32_t *samples, int order, double *ref)
{
    double autoc[MAX_LPC_ORDER + 1];

    s->lpc_apply_welch_window(samples, s->blocksize, s->windowed_samples);
    s->lpc_compute_autocorr(s->windowed_samples, s->blocksize, order, autoc);
    compute_ref_coefs(autoc, order, ref, ((void*)0));

    return order;
}
