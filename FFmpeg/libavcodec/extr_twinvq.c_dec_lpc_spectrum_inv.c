
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum TwinVQFrameType { ____Placeholder_TwinVQFrameType } TwinVQFrameType ;
struct TYPE_9__ {TYPE_1__* mtab; } ;
typedef TYPE_3__ TwinVQContext ;
struct TYPE_8__ {int sub; } ;
struct TYPE_7__ {int size; int n_lsp; TYPE_2__* fmode; } ;





 int cos (float) ;
 int eval_lpcenv (TYPE_3__*,float*,float*) ;
 int eval_lpcenv_2parts (TYPE_3__*,int,float*,float*,int,int) ;

__attribute__((used)) static void dec_lpc_spectrum_inv(TwinVQContext *tctx, float *lsp,
                                 enum TwinVQFrameType ftype, float *lpc)
{
    int i;
    int size = tctx->mtab->size / tctx->mtab->fmode[ftype].sub;

    for (i = 0; i < tctx->mtab->n_lsp; i++)
        lsp[i] = 2 * cos(lsp[i]);

    switch (ftype) {
    case 130:
        eval_lpcenv_2parts(tctx, ftype, lsp, lpc, size, 8);
        break;
    case 129:
        eval_lpcenv_2parts(tctx, ftype, lsp, lpc, size, 2);
        break;
    case 128:
        eval_lpcenv(tctx, lsp, lpc);
        break;
    }
}
