
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_capability {int card; int driver; } ;
typedef int cap ;
struct TYPE_6__ {char* name; int type; scalar_t__ done; } ;
struct TYPE_5__ {char* name; int type; scalar_t__ done; } ;
struct TYPE_7__ {TYPE_2__ output; TYPE_1__ capture; int fd; int refsync; int refcount; void* priv; } ;
typedef TYPE_3__ V4L2m2mContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int VIDIOC_QUERYCAP ;
 int atomic_init (int *,int ) ;
 int av_log (void*,int ,char*,int ,int ,char*) ;
 int ioctl (int ,int ,struct v4l2_capability*) ;
 int memset (struct v4l2_capability*,int ,int) ;
 int sem_init (int *,int ,int ) ;
 scalar_t__ v4l2_mplane_video (struct v4l2_capability*) ;
 scalar_t__ v4l2_splane_video (struct v4l2_capability*) ;

__attribute__((used)) static int v4l2_prepare_contexts(V4L2m2mContext* s, int probe)
{
    struct v4l2_capability cap;
    void *log_ctx = s->priv;
    int ret;

    s->capture.done = s->output.done = 0;
    s->capture.name = "capture";
    s->output.name = "output";
    atomic_init(&s->refcount, 0);
    sem_init(&s->refsync, 0, 0);

    memset(&cap, 0, sizeof(cap));
    ret = ioctl(s->fd, VIDIOC_QUERYCAP, &cap);
    if (ret < 0)
        return ret;

    av_log(log_ctx, probe ? AV_LOG_DEBUG : AV_LOG_INFO,
                     "driver '%s' on card '%s' in %s mode\n", cap.driver, cap.card,
                     v4l2_mplane_video(&cap) ? "mplane" :
                     v4l2_splane_video(&cap) ? "splane" : "unknown");

    if (v4l2_mplane_video(&cap)) {
        s->capture.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
        s->output.type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
        return 0;
    }

    if (v4l2_splane_video(&cap)) {
        s->capture.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        s->output.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
        return 0;
    }

    return AVERROR(EINVAL);
}
