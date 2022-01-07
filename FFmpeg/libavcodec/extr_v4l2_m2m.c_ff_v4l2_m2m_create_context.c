
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_4__* context; scalar_t__ context_ref; int num_output_buffers; int num_capture_buffers; } ;
typedef TYPE_3__ V4L2m2mPriv ;
struct TYPE_10__ {int num_buffers; } ;
struct TYPE_9__ {int num_buffers; } ;
struct TYPE_12__ {int fd; scalar_t__ self_ref; TYPE_2__ output; TYPE_1__ capture; TYPE_3__* priv; } ;
typedef TYPE_4__ V4L2m2mContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ av_buffer_create (int *,int,int *,int *,int ) ;
 int av_freep (TYPE_4__**) ;
 TYPE_4__* av_mallocz (int) ;
 int v4l2_m2m_destroy_context ;

int ff_v4l2_m2m_create_context(V4L2m2mPriv *priv, V4L2m2mContext **s)
{
    *s = av_mallocz(sizeof(V4L2m2mContext));
    if (!*s)
        return AVERROR(ENOMEM);

    priv->context_ref = av_buffer_create((uint8_t *) *s, sizeof(V4L2m2mContext),
                                         &v4l2_m2m_destroy_context, ((void*)0), 0);
    if (!priv->context_ref) {
        av_freep(s);
        return AVERROR(ENOMEM);
    }


    priv->context = *s;
    (*s)->priv = priv;


    priv->context->capture.num_buffers = priv->num_capture_buffers;
    priv->context->output.num_buffers = priv->num_output_buffers;
    priv->context->self_ref = priv->context_ref;
    priv->context->fd = -1;

    return 0;
}
