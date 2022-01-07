
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int width; int height; int quality; int cq; int lq; int rtj; int pic; int decomp_buf; int decomp_size; } ;
typedef TYPE_1__ NuvContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LZO_OUTPUT_PADDING ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int FFMAX (int ,int ) ;
 int INT_MAX ;
 int RTJPEG_HEADER_SIZE ;
 int av_fast_malloc (int *,int *,int) ;
 int av_frame_unref (int ) ;
 int av_image_check_size (int,int,int ,TYPE_2__*) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_rtjpeg_decode_init (int *,int,int,int ,int ) ;
 int get_quant_quality (TYPE_1__*,int) ;

__attribute__((used)) static int codec_reinit(AVCodecContext *avctx, int width, int height,
                        int quality)
{
    NuvContext *c = avctx->priv_data;
    int ret;

    width = FFALIGN(width, 2);
    height = FFALIGN(height, 2);
    if (quality >= 0)
        get_quant_quality(c, quality);
    if (width != c->width || height != c->height) {

        int buf_size = height * width * 3 / 2
                     + FFMAX(AV_LZO_OUTPUT_PADDING, AV_INPUT_BUFFER_PADDING_SIZE)
                     + RTJPEG_HEADER_SIZE;
        if (buf_size > INT_MAX/8)
            return -1;
        if ((ret = av_image_check_size(height, width, 0, avctx)) < 0)
            return ret;
        avctx->width = c->width = width;
        avctx->height = c->height = height;
        av_fast_malloc(&c->decomp_buf, &c->decomp_size,
                       buf_size);
        if (!c->decomp_buf) {
            av_log(avctx, AV_LOG_ERROR,
                   "Can't allocate decompression buffer.\n");
            return AVERROR(ENOMEM);
        }
        ff_rtjpeg_decode_init(&c->rtj, c->width, c->height, c->lq, c->cq);
        av_frame_unref(c->pic);
        return 1;
    } else if (quality != c->quality)
        ff_rtjpeg_decode_init(&c->rtj, c->width, c->height, c->lq, c->cq);

    return 0;
}
