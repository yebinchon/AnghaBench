
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int bits_per_raw_sample; int dct_algo; int idct_algo; } ;
struct TYPE_9__ {int bits_per_sample; int dct_algo; int idct_algo; } ;
typedef int PixblockDSPContext ;
typedef int IDCTDSPContext ;
typedef int FDCTDSPContext ;
typedef TYPE_1__ AVDCT ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int COPY (int ,int ) ;
 int ENOMEM ;
 TYPE_2__* avcodec_alloc_context3 (int *) ;
 int avcodec_free_context (TYPE_2__**) ;
 int fdct ;
 int ff_fdctdsp_init (int *,TYPE_2__*) ;
 int ff_idctdsp_init (int *,TYPE_2__*) ;
 int ff_pixblockdsp_init (int *,TYPE_2__*) ;
 int get_pixels ;
 int idct ;
 int idct_permutation ;

int avcodec_dct_init(AVDCT *dsp)
{
    AVCodecContext *avctx = avcodec_alloc_context3(((void*)0));

    if (!avctx)
        return AVERROR(ENOMEM);

    avctx->idct_algo = dsp->idct_algo;
    avctx->dct_algo = dsp->dct_algo;
    avctx->bits_per_raw_sample = dsp->bits_per_sample;
    avcodec_free_context(&avctx);

    return 0;
}
