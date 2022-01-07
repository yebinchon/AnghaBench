
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* den; void* num; } ;
struct TYPE_12__ {int bits_per_raw_sample; TYPE_3__ sample_aspect_ratio; int pix_fmt; } ;
struct TYPE_9__ {scalar_t__ chroma_format; int width; int height; int context_reinit; size_t aspect_ratio_info; void* mpeg_quant; void* low_delay; TYPE_6__* avctx; } ;
struct TYPE_10__ {void* shape; void* rgb; TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_GBRP10 ;
 int AV_PIX_FMT_YUV422P10 ;
 int AV_PIX_FMT_YUV444P10 ;
 void* BIN_ONLY_SHAPE ;
 scalar_t__ CHROMA_422 ;
 size_t FF_ASPECT_EXTENDED ;
 void* RECT_SHAPE ;
 int av_log (TYPE_6__*,int ,char*) ;
 int avpriv_request_sample (TYPE_6__*,char*,int) ;
 int check_marker (TYPE_6__*,int *,char*) ;
 int extension_and_user_data (TYPE_1__*,int *,int) ;
 TYPE_3__* ff_h263_pixel_aspect ;
 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int next_start_code_studio (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_studio_vol_header(Mpeg4DecContext *ctx, GetBitContext *gb)
{
    MpegEncContext *s = &ctx->m;
    int width, height;
    int bits_per_raw_sample;



            skip_bits(gb, 4);
            ctx->shape = get_bits(gb, 2);
            skip_bits(gb, 4);
            skip_bits1(gb);
            if (ctx->shape != BIN_ONLY_SHAPE) {
                ctx->rgb = get_bits1(gb);
                s->chroma_format = get_bits(gb, 2);
                if (!s->chroma_format) {
                    av_log(s->avctx, AV_LOG_ERROR, "illegal chroma format\n");
                    return AVERROR_INVALIDDATA;
                }

                bits_per_raw_sample = get_bits(gb, 4);
                if (bits_per_raw_sample == 10) {
                    if (ctx->rgb) {
                        s->avctx->pix_fmt = AV_PIX_FMT_GBRP10;
                    }
                    else {
                        s->avctx->pix_fmt = s->chroma_format == CHROMA_422 ? AV_PIX_FMT_YUV422P10 : AV_PIX_FMT_YUV444P10;
                    }
                }
                else {
                    avpriv_request_sample(s->avctx, "MPEG-4 Studio profile bit-depth %u", bits_per_raw_sample);
                    return AVERROR_PATCHWELCOME;
                }
                s->avctx->bits_per_raw_sample = bits_per_raw_sample;
            }
            if (ctx->shape == RECT_SHAPE) {
                check_marker(s->avctx, gb, "before video_object_layer_width");
                width = get_bits(gb, 14);
                check_marker(s->avctx, gb, "before video_object_layer_height");
                height = get_bits(gb, 14);
                check_marker(s->avctx, gb, "after video_object_layer_height");


                if (width && height) {
                    if (s->width && s->height &&
                        (s->width != width || s->height != height))
                        s->context_reinit = 1;
                    s->width = width;
                    s->height = height;
                }
            }
            s->aspect_ratio_info = get_bits(gb, 4);
            if (s->aspect_ratio_info == FF_ASPECT_EXTENDED) {
                s->avctx->sample_aspect_ratio.num = get_bits(gb, 8);
                s->avctx->sample_aspect_ratio.den = get_bits(gb, 8);
            } else {
                s->avctx->sample_aspect_ratio = ff_h263_pixel_aspect[s->aspect_ratio_info];
            }
            skip_bits(gb, 4);
            skip_bits(gb, 15);
            check_marker(s->avctx, gb, "after first_half_bit_rate");
            skip_bits(gb, 15);
            check_marker(s->avctx, gb, "after latter_half_bit_rate");
            skip_bits(gb, 15);
            check_marker(s->avctx, gb, "after first_half_vbv_buffer_size");
            skip_bits(gb, 3);
            skip_bits(gb, 11);
            check_marker(s->avctx, gb, "after first_half_vbv_buffer_size");
            skip_bits(gb, 15);
            check_marker(s->avctx, gb, "after latter_half_vbv_occupancy");
            s->low_delay = get_bits1(gb);
            s->mpeg_quant = get_bits1(gb);

            next_start_code_studio(gb);
            extension_and_user_data(s, gb, 2);

    return 0;
}
