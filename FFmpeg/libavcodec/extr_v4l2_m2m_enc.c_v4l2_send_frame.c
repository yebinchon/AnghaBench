
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* context; } ;
typedef TYPE_1__ V4L2m2mPriv ;
struct TYPE_10__ {int output; } ;
typedef TYPE_2__ V4L2m2mContext ;
typedef int V4L2Context ;
struct TYPE_12__ {scalar_t__ priv_data; } ;
struct TYPE_11__ {scalar_t__ pict_type; } ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_PICTURE_TYPE_I ;
 int FORCE_KEY_FRAME ;
 int MPEG_CID (int ) ;
 int ff_v4l2_context_enqueue_frame (int * const,TYPE_3__ const*) ;
 int v4l2_set_ext_ctrl (TYPE_2__*,int ,int ,char*) ;

__attribute__((used)) static int v4l2_send_frame(AVCodecContext *avctx, const AVFrame *frame)
{
    V4L2m2mContext *s = ((V4L2m2mPriv*)avctx->priv_data)->context;
    V4L2Context *const output = &s->output;






    return ff_v4l2_context_enqueue_frame(output, frame);
}
