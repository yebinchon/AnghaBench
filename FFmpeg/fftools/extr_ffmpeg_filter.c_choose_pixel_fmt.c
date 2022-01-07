
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_9__ {int* pix_fmts; int name; } ;
struct TYPE_8__ {scalar_t__ strict_std_compliance; int codec_id; } ;
struct TYPE_7__ {int nb_components; } ;
typedef int AVStream ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVCodec ;


 int AV_LOG_WARNING ;
 int const AV_PIX_FMT_NONE ;
 scalar_t__ FF_COMPLIANCE_UNOFFICIAL ;
 int av_get_pix_fmt_name (int) ;
 int av_log (int *,int ,char*,int ,int ,int ) ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;
 int avcodec_find_best_pix_fmt_of_2 (int,int const,int,int,int *) ;
 int* get_compliance_unofficial_pix_fmts (int ,int const*) ;

enum AVPixelFormat choose_pixel_fmt(AVStream *st, AVCodecContext *enc_ctx, AVCodec *codec, enum AVPixelFormat target)
{
    if (codec && codec->pix_fmts) {
        const enum AVPixelFormat *p = codec->pix_fmts;
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(target);

        int has_alpha = desc ? desc->nb_components % 2 == 0 : 0;
        enum AVPixelFormat best= AV_PIX_FMT_NONE;

        if (enc_ctx->strict_std_compliance <= FF_COMPLIANCE_UNOFFICIAL) {
            p = get_compliance_unofficial_pix_fmts(enc_ctx->codec_id, p);
        }
        for (; *p != AV_PIX_FMT_NONE; p++) {
            best= avcodec_find_best_pix_fmt_of_2(best, *p, target, has_alpha, ((void*)0));
            if (*p == target)
                break;
        }
        if (*p == AV_PIX_FMT_NONE) {
            if (target != AV_PIX_FMT_NONE)
                av_log(((void*)0), AV_LOG_WARNING,
                       "Incompatible pixel format '%s' for codec '%s', auto-selecting format '%s'\n",
                       av_get_pix_fmt_name(target),
                       codec->name,
                       av_get_pix_fmt_name(best));
            return best;
        }
    }
    return target;
}
