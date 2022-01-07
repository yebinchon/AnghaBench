
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int denominator; int numerator; } ;
struct v4l2_cropcap {TYPE_1__ pixelaspect; int type; } ;
struct AVRational {int member_1; int den; int num; int member_0; } ;
typedef int cropcap ;
struct TYPE_7__ {int type; } ;
typedef TYPE_2__ V4L2Context ;
struct TYPE_8__ {int fd; } ;
typedef struct AVRational AVRational ;


 int VIDIOC_CROPCAP ;
 TYPE_4__* ctx_to_m2mctx (TYPE_2__*) ;
 int ioctl (int ,int ,struct v4l2_cropcap*) ;
 int memset (struct v4l2_cropcap*,int ,int) ;

__attribute__((used)) static AVRational v4l2_get_sar(V4L2Context *ctx)
{
    struct AVRational sar = { 0, 1 };
    struct v4l2_cropcap cropcap;
    int ret;

    memset(&cropcap, 0, sizeof(cropcap));
    cropcap.type = ctx->type;

    ret = ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_CROPCAP, &cropcap);
    if (ret)
        return sar;

    sar.num = cropcap.pixelaspect.numerator;
    sar.den = cropcap.pixelaspect.denominator;
    return sar;
}
