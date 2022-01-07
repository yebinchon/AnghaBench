
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* avctx; } ;
struct TYPE_11__ {TYPE_1__* internal; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_6__ s; int * mb_type; int * intra_types_hist; int * deblock_coefs; int * cbp_luma; int * cbp_chroma; int * tmp_b_block_base; } ;
struct TYPE_9__ {scalar_t__ is_copy; } ;
typedef TYPE_2__ RV34DecContext ;
typedef TYPE_3__ AVCodecContext ;


 int ff_mpv_common_end (TYPE_6__*) ;
 int ff_mpv_common_init (TYPE_6__*) ;
 int ff_mpv_idct_init (TYPE_6__*) ;
 int rv34_decoder_alloc (TYPE_2__*) ;

int ff_rv34_decode_init_thread_copy(AVCodecContext *avctx)
{
    int err;
    RV34DecContext *r = avctx->priv_data;

    r->s.avctx = avctx;

    if (avctx->internal->is_copy) {
        r->tmp_b_block_base = ((void*)0);
        r->cbp_chroma = ((void*)0);
        r->cbp_luma = ((void*)0);
        r->deblock_coefs = ((void*)0);
        r->intra_types_hist = ((void*)0);
        r->mb_type = ((void*)0);

        ff_mpv_idct_init(&r->s);

        if ((err = ff_mpv_common_init(&r->s)) < 0)
            return err;
        if ((err = rv34_decoder_alloc(r)) < 0) {
            ff_mpv_common_end(&r->s);
            return err;
        }
    }

    return 0;
}
