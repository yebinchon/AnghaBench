
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int luma_intra_matrix ;
struct TYPE_12__ {int codec_id; scalar_t__ pix_fmt; int height; int width; TYPE_1__* codec; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int esc_pos; int slice_context_count; TYPE_2__** thread_context; } ;
struct TYPE_10__ {scalar_t__ esc_pos; } ;
struct TYPE_9__ {int priv_data_size; } ;
typedef int ScanTable ;
typedef int PutBitContext ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ AVCodecContext ;


 int AV_CODEC_ID_AMV ;


 scalar_t__ AV_PIX_FMT_BGR0 ;
 scalar_t__ AV_PIX_FMT_BGR24 ;
 scalar_t__ AV_PIX_FMT_BGRA ;
 int SOF0 ;
 int SOF3 ;
 int SOI ;
 int SOS ;
 int av_assert0 (int) ;
 int ff_mjpeg_init_hvsample (TYPE_4__*,int*,int*) ;
 int jpeg_put_comments (TYPE_4__*,int *) ;
 int jpeg_table_header (TYPE_4__*,int *,int *,int *,int *,int*) ;
 int memcmp (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;
 int put_marker (int *,int ) ;

void ff_mjpeg_encode_picture_header(AVCodecContext *avctx, PutBitContext *pb,
                                    ScanTable *intra_scantable, int pred,
                                    uint16_t luma_intra_matrix[64],
                                    uint16_t chroma_intra_matrix[64])
{
    const int lossless = avctx->codec_id != 128 && avctx->codec_id != AV_CODEC_ID_AMV;
    int hsample[4], vsample[4];
    int i;
    int components = 3 + (avctx->pix_fmt == AV_PIX_FMT_BGRA);
    int chroma_matrix = !!memcmp(luma_intra_matrix,
                                 chroma_intra_matrix,
                                 sizeof(luma_intra_matrix[0])*64);

    ff_mjpeg_init_hvsample(avctx, hsample, vsample);

    put_marker(pb, SOI);


    if(avctx->codec_id == AV_CODEC_ID_AMV) goto end;

    jpeg_put_comments(avctx, pb);

    jpeg_table_header(avctx, pb, intra_scantable, luma_intra_matrix, chroma_intra_matrix, hsample);

    switch (avctx->codec_id) {
    case 128: put_marker(pb, SOF0 ); break;
    case 129: put_marker(pb, SOF3 ); break;
    default: av_assert0(0);
    }

    put_bits(pb, 16, 17);
    if (lossless && ( avctx->pix_fmt == AV_PIX_FMT_BGR0
                    || avctx->pix_fmt == AV_PIX_FMT_BGRA
                    || avctx->pix_fmt == AV_PIX_FMT_BGR24))
        put_bits(pb, 8, 9);
    else
        put_bits(pb, 8, 8);
    put_bits(pb, 16, avctx->height);
    put_bits(pb, 16, avctx->width);
    put_bits(pb, 8, components);


    put_bits(pb, 8, 1);
    put_bits(pb, 4, hsample[0]);
    put_bits(pb, 4, vsample[0]);
    put_bits(pb, 8, 0);


    put_bits(pb, 8, 2);
    put_bits(pb, 4, hsample[1]);
    put_bits(pb, 4, vsample[1]);
    put_bits(pb, 8, lossless ? 0 : chroma_matrix);


    put_bits(pb, 8, 3);
    put_bits(pb, 4, hsample[2]);
    put_bits(pb, 4, vsample[2]);
    put_bits(pb, 8, lossless ? 0 : chroma_matrix);

    if (components == 4) {
        put_bits(pb, 8, 4);
        put_bits(pb, 4, hsample[3]);
        put_bits(pb, 4, vsample[3]);
        put_bits(pb, 8, 0);
    }


    put_marker(pb, SOS);
    put_bits(pb, 16, 6 + 2*components);
    put_bits(pb, 8, components);


    put_bits(pb, 8, 1);
    put_bits(pb, 4, 0);
    put_bits(pb, 4, 0);


    put_bits(pb, 8, 2);
    put_bits(pb, 4, 1);
    put_bits(pb, 4, lossless ? 0 : 1);


    put_bits(pb, 8, 3);
    put_bits(pb, 4, 1);
    put_bits(pb, 4, lossless ? 0 : 1);

    if (components == 4) {

        put_bits(pb, 8, 4);
        put_bits(pb, 4, 0);
        put_bits(pb, 4, 0);
    }

    put_bits(pb, 8, lossless ? pred : 0);

    switch (avctx->codec_id) {
    case 128: put_bits(pb, 8, 63); break;
    case 129: put_bits(pb, 8, 0); break;
    default: av_assert0(0);
    }

    put_bits(pb, 8, 0);

end:
    if (!lossless) {
        MpegEncContext *s = avctx->priv_data;
        av_assert0(avctx->codec->priv_data_size == sizeof(MpegEncContext));

        s->esc_pos = put_bits_count(pb) >> 3;
        for(i=1; i<s->slice_context_count; i++)
            s->thread_context[i]->esc_pos = 0;
    }
}
