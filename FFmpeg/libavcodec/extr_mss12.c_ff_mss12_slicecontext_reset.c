
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inter_pix_ctx; int intra_pix_ctx; int pivot; int edge_mode; int split_mode; int inter_region; int intra_region; } ;
typedef TYPE_1__ SliceContext ;


 int model_reset (int *) ;
 int pixctx_reset (int *) ;

void ff_mss12_slicecontext_reset(SliceContext *sc)
{
    model_reset(&sc->intra_region);
    model_reset(&sc->inter_region);
    model_reset(&sc->split_mode);
    model_reset(&sc->edge_mode);
    model_reset(&sc->pivot);
    pixctx_reset(&sc->intra_pix_ctx);
    pixctx_reset(&sc->inter_pix_ctx);
}
