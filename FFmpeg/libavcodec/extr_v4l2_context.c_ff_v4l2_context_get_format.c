
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_format_update {int update_avfmt; int update_v4l2; int v4l2_fmt; int av_fmt; int member_0; } ;
struct TYPE_8__ {scalar_t__ av_codec_id; int format; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_9__ {int fd; } ;


 scalar_t__ AV_CODEC_ID_RAWVIDEO ;
 int VIDIOC_TRY_FMT ;
 TYPE_6__* ctx_to_m2mctx (TYPE_1__*) ;
 int ioctl (int ,int ,int *) ;
 int v4l2_get_coded_format (TYPE_1__*,int *) ;
 int v4l2_get_raw_format (TYPE_1__*,int *) ;
 int v4l2_save_to_context (TYPE_1__*,struct v4l2_format_update*) ;

int ff_v4l2_context_get_format(V4L2Context* ctx, int probe)
{
    struct v4l2_format_update fmt = { 0 };
    int ret;

    if (ctx->av_codec_id == AV_CODEC_ID_RAWVIDEO) {
        ret = v4l2_get_raw_format(ctx, &fmt.av_fmt);
        if (ret)
            return ret;

        fmt.update_avfmt = !probe;
        v4l2_save_to_context(ctx, &fmt);


        return ret;
    }

    ret = v4l2_get_coded_format(ctx, &fmt.v4l2_fmt);
    if (ret)
        return ret;

    fmt.update_v4l2 = 1;
    v4l2_save_to_context(ctx, &fmt);

    return ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_TRY_FMT, &ctx->format);
}
