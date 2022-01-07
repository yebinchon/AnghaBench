
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int** lpc_coef; int * lpc_refl_rms; int avctx; } ;
typedef TYPE_1__ RA144Context ;


 int LPC_ORDER ;
 int NBLOCKS ;
 scalar_t__ ff_eval_refl (int*,int*,int ) ;
 int ff_int_to_int16 (int*,int*) ;
 int ff_rescale_rms (int ,int) ;
 int ff_rms (int*) ;

int ff_interp(RA144Context *ractx, int16_t *out, int a, int copyold, int energy)
{
    int work[LPC_ORDER];
    int b = NBLOCKS - a;
    int i;



    for (i = 0; i < LPC_ORDER; i++)
        out[i] = (a * ractx->lpc_coef[0][i] + b * ractx->lpc_coef[1][i])>> 2;

    if (ff_eval_refl(work, out, ractx->avctx)) {


        ff_int_to_int16(out, ractx->lpc_coef[copyold]);
        return ff_rescale_rms(ractx->lpc_refl_rms[copyold], energy);
    } else {
        return ff_rescale_rms(ff_rms(work), energy);
    }
}
