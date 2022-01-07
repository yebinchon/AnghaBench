
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int roi_map; int ref_frame; } ;
typedef TYPE_1__ vpx_roi_map_t ;
struct TYPE_11__ {scalar_t__ aq_mode; int cpu_used; scalar_t__ deadline; int roi_warned; int encoder; } ;
typedef TYPE_2__ VPxContext ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
typedef int AVFrameSideData ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int VP9E_SET_ROI_MAP ;
 scalar_t__ VPX_DL_REALTIME ;
 int VPX_VERSION_MAJOR (int) ;
 int VPX_VERSION_MINOR (int) ;
 int VPX_VERSION_PATCH (int) ;
 int av_freep (int *) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int log_encoder_error (TYPE_3__*,char*) ;
 int memset (int ,int,int) ;
 int set_roi_map (TYPE_3__*,int const*,int,int,TYPE_1__*,int const,int const) ;
 scalar_t__ vpx_codec_control (int *,int ,TYPE_1__*) ;
 int vpx_codec_version () ;

__attribute__((used)) static int vp9_encode_set_roi(AVCodecContext *avctx, int frame_width, int frame_height, const AVFrameSideData *sd)
{
    VPxContext *ctx = avctx->priv_data;
    if (!ctx->roi_warned) {
        ctx->roi_warned = 1;
        av_log(avctx, AV_LOG_WARNING, "ROI is not supported, please upgrade libvpx to version >= 1.8.1. "
                                      "You may need to rebuild ffmpeg.\n");
    }
    return 0;
}
