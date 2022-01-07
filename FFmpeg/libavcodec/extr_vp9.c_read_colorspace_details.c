
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
struct TYPE_9__ {int bpp; } ;
struct TYPE_10__ {TYPE_1__ h; } ;
struct TYPE_13__ {int bpp_index; int bytesperpixel; size_t ss_h; size_t ss_v; int pix_fmt; int gb; TYPE_2__ s; } ;
typedef TYPE_5__ VP9Context ;
struct TYPE_14__ {int profile; int colorspace; void* color_range; TYPE_5__* priv_data; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {int member_1; int member_0; } ;
typedef TYPE_6__ AVCodecContext ;


 void* AVCOL_RANGE_JPEG ;
 void* AVCOL_RANGE_MPEG ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 size_t get_bits (int *,int) ;
 void* get_bits1 (int *) ;

__attribute__((used)) static int read_colorspace_details(AVCodecContext *avctx)
{
    static const enum AVColorSpace colorspaces[8] = {
        143, 149, 148, 145,
        144, 150, 147, 146,
    };
    VP9Context *s = avctx->priv_data;
    int bits = avctx->profile <= 1 ? 0 : 1 + get_bits1(&s->gb);

    s->bpp_index = bits;
    s->s.h.bpp = 8 + bits * 2;
    s->bytesperpixel = (7 + s->s.h.bpp) >> 3;
    avctx->colorspace = colorspaces[get_bits(&s->gb, 3)];
    if (avctx->colorspace == 146) {
        static const enum AVPixelFormat pix_fmt_rgb[3] = {
            142, 141, 140
        };
        s->ss_h = s->ss_v = 0;
        avctx->color_range = AVCOL_RANGE_JPEG;
        s->pix_fmt = pix_fmt_rgb[bits];
        if (avctx->profile & 1) {
            if (get_bits1(&s->gb)) {
                av_log(avctx, AV_LOG_ERROR, "Reserved bit set in RGB\n");
                return AVERROR_INVALIDDATA;
            }
        } else {
            av_log(avctx, AV_LOG_ERROR, "RGB not supported in profile %d\n",
                   avctx->profile);
            return AVERROR_INVALIDDATA;
        }
    } else {
        static const enum AVPixelFormat pix_fmt_for_ss[3][2 ][2 ] = {
            { { 130, 136 },
              { 133, 139 } },
            { { 129, 135 },
              { 132, 138 } },
            { { 128, 134 },
              { 131, 137 } }
        };
        avctx->color_range = get_bits1(&s->gb) ? AVCOL_RANGE_JPEG : AVCOL_RANGE_MPEG;
        if (avctx->profile & 1) {
            s->ss_h = get_bits1(&s->gb);
            s->ss_v = get_bits1(&s->gb);
            s->pix_fmt = pix_fmt_for_ss[bits][s->ss_v][s->ss_h];
            if (s->pix_fmt == 139) {
                av_log(avctx, AV_LOG_ERROR, "YUV 4:2:0 not supported in profile %d\n",
                       avctx->profile);
                return AVERROR_INVALIDDATA;
            } else if (get_bits1(&s->gb)) {
                av_log(avctx, AV_LOG_ERROR, "Profile %d color details reserved bit set\n",
                       avctx->profile);
                return AVERROR_INVALIDDATA;
            }
        } else {
            s->ss_h = s->ss_v = 1;
            s->pix_fmt = pix_fmt_for_ss[bits][1][1];
        }
    }

    return 0;
}
