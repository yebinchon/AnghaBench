
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sub ;
struct v4l2_event_subscription {int type; } ;
struct TYPE_5__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_4__ {int avctx; int fd; TYPE_2__ output; } ;
typedef TYPE_1__ V4L2m2mContext ;
typedef TYPE_2__ V4L2Context ;


 int AV_LOG_ERROR ;
 int V4L2_EVENT_SOURCE_CHANGE ;
 int VIDIOC_SUBSCRIBE_EVENT ;
 int av_log (int ,int ,char*) ;
 int ioctl (int ,int ,struct v4l2_event_subscription*) ;
 int memset (struct v4l2_event_subscription*,int ,int) ;

__attribute__((used)) static int v4l2_prepare_decoder(V4L2m2mContext *s)
{
    struct v4l2_event_subscription sub;
    V4L2Context *output = &s->output;
    int ret;




    memset(&sub, 0, sizeof(sub));
    sub.type = V4L2_EVENT_SOURCE_CHANGE;
    ret = ioctl(s->fd, VIDIOC_SUBSCRIBE_EVENT, &sub);
    if ( ret < 0) {
        if (output->height == 0 || output->width == 0) {
            av_log(s->avctx, AV_LOG_ERROR,
                "the v4l2 driver does not support VIDIOC_SUBSCRIBE_EVENT\n"
                "you must provide codec_height and codec_width on input\n");
            return ret;
        }
    }

    return 0;
}
