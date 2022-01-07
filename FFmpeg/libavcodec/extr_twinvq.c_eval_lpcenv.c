
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int n_lsp; TYPE_1__* fmode; } ;
typedef TYPE_2__ TwinVQModeTab ;
struct TYPE_7__ {float** cos_tabs; TYPE_2__* mtab; } ;
typedef TYPE_3__ TwinVQContext ;
struct TYPE_5__ {int sub; } ;


 size_t TWINVQ_FT_SHORT ;
 float eval_lpc_spectrum (float const*,float,int ) ;

__attribute__((used)) static void eval_lpcenv(TwinVQContext *tctx, const float *cos_vals, float *lpc)
{
    int i;
    const TwinVQModeTab *mtab = tctx->mtab;
    int size_s = mtab->size / mtab->fmode[TWINVQ_FT_SHORT].sub;

    for (i = 0; i < size_s / 2; i++) {
        float cos_i = tctx->cos_tabs[0][i];
        lpc[i] = eval_lpc_spectrum(cos_vals, cos_i, mtab->n_lsp);
        lpc[size_s - i - 1] = eval_lpc_spectrum(cos_vals, -cos_i, mtab->n_lsp);
    }
}
