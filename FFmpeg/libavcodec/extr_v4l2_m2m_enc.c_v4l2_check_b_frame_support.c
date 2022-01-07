
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* avctx; } ;
typedef TYPE_1__ V4L2m2mContext ;
struct TYPE_8__ {scalar_t__ max_b_frames; } ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_WARNING ;
 int B_FRAMES ;
 int MPEG_CID (int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int avpriv_report_missing_feature (TYPE_5__*,char*) ;
 int v4l2_get_ext_ctrl (TYPE_1__*,int ,scalar_t__*,char*) ;
 int v4l2_set_ext_ctrl (TYPE_1__*,int ,int ,char*) ;

__attribute__((used)) static int v4l2_check_b_frame_support(V4L2m2mContext *s)
{
    if (s->avctx->max_b_frames)
        av_log(s->avctx, AV_LOG_WARNING, "Encoder does not support b-frames yet\n");

    v4l2_set_ext_ctrl(s, MPEG_CID(B_FRAMES), 0, "number of B-frames");
    v4l2_get_ext_ctrl(s, MPEG_CID(B_FRAMES), &s->avctx->max_b_frames, "number of B-frames");
    if (s->avctx->max_b_frames == 0)
        return 0;

    avpriv_report_missing_feature(s->avctx, "DTS/PTS calculation for V4L2 encoding");

    return AVERROR_PATCHWELCOME;
}
