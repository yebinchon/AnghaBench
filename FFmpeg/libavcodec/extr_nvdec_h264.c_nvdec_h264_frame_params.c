
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {TYPE_2__* sps; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_8__ {scalar_t__ num_reorder_frames; scalar_t__ ref_frame_count; } ;
typedef TYPE_2__ SPS ;
typedef TYPE_3__ H264Context ;
typedef TYPE_4__ AVCodecContext ;
typedef int AVBufferRef ;


 int ff_nvdec_frame_params (TYPE_4__*,int *,scalar_t__,int ) ;

__attribute__((used)) static int nvdec_h264_frame_params(AVCodecContext *avctx,
                                   AVBufferRef *hw_frames_ctx)
{
    const H264Context *h = avctx->priv_data;
    const SPS *sps = h->ps.sps;
    return ff_nvdec_frame_params(avctx, hw_frames_ctx, sps->ref_frame_count + sps->num_reorder_frames, 0);
}
