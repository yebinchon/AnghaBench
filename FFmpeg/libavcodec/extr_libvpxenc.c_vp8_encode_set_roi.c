
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int roi_map; } ;
typedef TYPE_1__ vpx_roi_map_t ;
struct TYPE_10__ {int encoder; } ;
typedef TYPE_2__ VPxContext ;
struct TYPE_11__ {TYPE_2__* priv_data; } ;
typedef int AVFrameSideData ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int VP8E_SET_ROI_MAP ;
 int av_freep (int *) ;
 int log_encoder_error (TYPE_3__*,char*) ;
 int set_roi_map (TYPE_3__*,int const*,int,int,TYPE_1__*,int const,int const) ;
 scalar_t__ vpx_codec_control (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int vp8_encode_set_roi(AVCodecContext *avctx, int frame_width, int frame_height, const AVFrameSideData *sd)
{
    vpx_roi_map_t roi_map;
    const int segment_cnt = 4;
    const int block_size = 16;
    VPxContext *ctx = avctx->priv_data;

    int ret = set_roi_map(avctx, sd, frame_width, frame_height, &roi_map, block_size, segment_cnt);
    if (ret) {
        log_encoder_error(avctx, "Failed to set_roi_map.\n");
        return ret;
    }

    if (vpx_codec_control(&ctx->encoder, VP8E_SET_ROI_MAP, &roi_map)) {
        log_encoder_error(avctx, "Failed to set VP8E_SET_ROI_MAP codec control.\n");
        ret = AVERROR_INVALIDDATA;
    }

    av_freep(&roi_map.roi_map);
    return ret;
}
