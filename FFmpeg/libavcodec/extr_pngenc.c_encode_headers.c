
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct TYPE_12__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_17__ {TYPE_1__ sample_aspect_ratio; scalar_t__ height; scalar_t__ width; TYPE_2__* priv_data; } ;
struct TYPE_16__ {scalar_t__ color_primaries; scalar_t__ color_trc; scalar_t__* data; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {int type; int flags; } ;
struct TYPE_13__ {int* buf; int bit_depth; int color_type; int is_progressive; int bytestream; scalar_t__ dpm; } ;
typedef TYPE_2__ PNGEncContext ;
typedef TYPE_3__ AVStereo3D ;
typedef TYPE_4__ AVFrameSideData ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 scalar_t__ AVCOL_PRI_BT709 ;
 scalar_t__ AVCOL_TRC_IEC61966_2_1 ;
 int AV_FRAME_DATA_STEREO3D ;
 int AV_LOG_WARNING ;

 int AV_STEREO3D_FLAG_INVERT ;

 int AV_WB32 (int*,scalar_t__) ;
 int MKTAG (char,char,char,char) ;
 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 TYPE_4__* av_frame_get_side_data (TYPE_5__ const*,int ) ;
 int av_log (TYPE_6__*,int ,char*) ;
 int bytestream_put_be24 (int**,unsigned int) ;
 scalar_t__ png_get_chrm (scalar_t__,int*) ;
 scalar_t__ png_get_gama (scalar_t__,int*) ;
 int png_write_chunk (int *,int ,int*,int) ;

__attribute__((used)) static int encode_headers(AVCodecContext *avctx, const AVFrame *pict)
{
    AVFrameSideData *side_data;
    PNGEncContext *s = avctx->priv_data;


    AV_WB32(s->buf, avctx->width);
    AV_WB32(s->buf + 4, avctx->height);
    s->buf[8] = s->bit_depth;
    s->buf[9] = s->color_type;
    s->buf[10] = 0;
    s->buf[11] = 0;
    s->buf[12] = s->is_progressive;
    png_write_chunk(&s->bytestream, MKTAG('I', 'H', 'D', 'R'), s->buf, 13);


    if (s->dpm) {
      AV_WB32(s->buf, s->dpm);
      AV_WB32(s->buf + 4, s->dpm);
      s->buf[8] = 1;
    } else {
      AV_WB32(s->buf, avctx->sample_aspect_ratio.num);
      AV_WB32(s->buf + 4, avctx->sample_aspect_ratio.den);
      s->buf[8] = 0;
    }
    png_write_chunk(&s->bytestream, MKTAG('p', 'H', 'Y', 's'), s->buf, 9);


    side_data = av_frame_get_side_data(pict, AV_FRAME_DATA_STEREO3D);
    if (side_data) {
        AVStereo3D *stereo3d = (AVStereo3D *)side_data->data;
        switch (stereo3d->type) {
            case 128:
                s->buf[0] = ((stereo3d->flags & AV_STEREO3D_FLAG_INVERT) == 0) ? 1 : 0;
                png_write_chunk(&s->bytestream, MKTAG('s', 'T', 'E', 'R'), s->buf, 1);
                break;
            case 129:
                break;
            default:
                av_log(avctx, AV_LOG_WARNING, "Only side-by-side stereo3d flag can be defined within sTER chunk\n");
                break;
        }
    }


    if (pict->color_primaries == AVCOL_PRI_BT709 &&
        pict->color_trc == AVCOL_TRC_IEC61966_2_1) {
        s->buf[0] = 1;
        png_write_chunk(&s->bytestream, MKTAG('s', 'R', 'G', 'B'), s->buf, 1);
    }

    if (png_get_chrm(pict->color_primaries, s->buf))
        png_write_chunk(&s->bytestream, MKTAG('c', 'H', 'R', 'M'), s->buf, 32);
    if (png_get_gama(pict->color_trc, s->buf))
        png_write_chunk(&s->bytestream, MKTAG('g', 'A', 'M', 'A'), s->buf, 4);


    if (s->color_type == PNG_COLOR_TYPE_PALETTE) {
        int has_alpha, alpha, i;
        unsigned int v;
        uint32_t *palette;
        uint8_t *ptr, *alpha_ptr;

        palette = (uint32_t *)pict->data[1];
        ptr = s->buf;
        alpha_ptr = s->buf + 256 * 3;
        has_alpha = 0;
        for (i = 0; i < 256; i++) {
            v = palette[i];
            alpha = v >> 24;
            if (alpha != 0xff)
                has_alpha = 1;
            *alpha_ptr++ = alpha;
            bytestream_put_be24(&ptr, v);
        }
        png_write_chunk(&s->bytestream,
                        MKTAG('P', 'L', 'T', 'E'), s->buf, 256 * 3);
        if (has_alpha) {
            png_write_chunk(&s->bytestream,
                            MKTAG('t', 'R', 'N', 'S'), s->buf + 256 * 3, 256);
        }
    }

    return 0;
}
