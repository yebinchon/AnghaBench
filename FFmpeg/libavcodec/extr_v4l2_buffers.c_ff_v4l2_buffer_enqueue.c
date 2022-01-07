
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int status; TYPE_2__ buf; int flags; } ;
typedef TYPE_1__ V4L2Buffer ;
struct TYPE_8__ {int fd; } ;


 int AVERROR (int ) ;
 int V4L2BUF_IN_DRIVER ;
 int VIDIOC_QBUF ;
 TYPE_4__* buf_to_m2mctx (TYPE_1__*) ;
 int errno ;
 int ioctl (int ,int ,TYPE_2__*) ;

int ff_v4l2_buffer_enqueue(V4L2Buffer* avbuf)
{
    int ret;

    avbuf->buf.flags = avbuf->flags;

    ret = ioctl(buf_to_m2mctx(avbuf)->fd, VIDIOC_QBUF, &avbuf->buf);
    if (ret < 0)
        return AVERROR(errno);

    avbuf->status = V4L2BUF_IN_DRIVER;

    return 0;
}
