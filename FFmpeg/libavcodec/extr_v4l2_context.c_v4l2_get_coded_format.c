
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct v4l2_fmtdesc {scalar_t__ pixelformat; int index; int type; } ;
typedef int fdesc ;
struct TYPE_5__ {int type; int av_codec_id; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_6__ {int fd; } ;


 int AVERROR (int ) ;
 int EINVAL ;
 int VIDIOC_ENUM_FMT ;
 TYPE_3__* ctx_to_m2mctx (TYPE_1__*) ;
 scalar_t__ ff_v4l2_format_avcodec_to_v4l2 (int ) ;
 int ioctl (int ,int ,struct v4l2_fmtdesc*) ;
 int memset (struct v4l2_fmtdesc*,int ,int) ;

__attribute__((used)) static int v4l2_get_coded_format(V4L2Context* ctx, uint32_t *p)
{
    struct v4l2_fmtdesc fdesc;
    uint32_t v4l2_fmt;
    int ret;


    v4l2_fmt = ff_v4l2_format_avcodec_to_v4l2(ctx->av_codec_id);
    if (!v4l2_fmt)
        return AVERROR(EINVAL);


    memset(&fdesc, 0, sizeof(fdesc));
    fdesc.type = ctx->type;

    for (;;) {
        ret = ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_ENUM_FMT, &fdesc);
        if (ret)
            return AVERROR(EINVAL);

        if (fdesc.pixelformat == v4l2_fmt)
            break;

        fdesc.index++;
    }

    *p = v4l2_fmt;

    return 0;
}
