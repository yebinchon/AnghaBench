
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int context_ref; TYPE_2__* context; } ;
typedef TYPE_1__ V4L2m2mPriv ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int * self_ref; TYPE_4__ output; TYPE_4__ capture; } ;
typedef TYPE_2__ V4L2m2mContext ;


 int AV_LOG_ERROR ;
 int VIDIOC_STREAMOFF ;
 int av_buffer_unref (int *) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int ff_v4l2_context_release (TYPE_4__*) ;
 int ff_v4l2_context_set_status (TYPE_4__*,int ) ;

int ff_v4l2_m2m_codec_end(V4L2m2mPriv *priv)
{
    V4L2m2mContext* s = priv->context;
    int ret;

    ret = ff_v4l2_context_set_status(&s->output, VIDIOC_STREAMOFF);
    if (ret)
        av_log(priv, AV_LOG_ERROR, "VIDIOC_STREAMOFF %s\n", s->output.name);

    ret = ff_v4l2_context_set_status(&s->capture, VIDIOC_STREAMOFF);
    if (ret)
        av_log(priv, AV_LOG_ERROR, "VIDIOC_STREAMOFF %s\n", s->capture.name);

    ff_v4l2_context_release(&s->output);

    s->self_ref = ((void*)0);
    av_buffer_unref(&priv->context_ref);

    return 0;
}
