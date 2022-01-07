
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deblock_coefs; int cbp_chroma; int cbp_luma; int mb_type; int tmp_b_block_base; int * intra_types; int intra_types_hist; } ;
typedef TYPE_1__ RV34DecContext ;


 int av_freep (int *) ;

__attribute__((used)) static void rv34_decoder_free(RV34DecContext *r)
{
    av_freep(&r->intra_types_hist);
    r->intra_types = ((void*)0);
    av_freep(&r->tmp_b_block_base);
    av_freep(&r->mb_type);
    av_freep(&r->cbp_luma);
    av_freep(&r->cbp_chroma);
    av_freep(&r->deblock_coefs);
}
