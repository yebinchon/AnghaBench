
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_3__* decoder; TYPE_2__* pool_out; } ;
struct TYPE_10__ {int * output; } ;
struct TYPE_9__ {TYPE_1__* pool; } ;
struct TYPE_8__ {int queue; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef TYPE_4__ MMALDecodeContext ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_send_buffer (int ,int *) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static int ffmmal_fill_output_port(AVCodecContext *avctx)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    MMAL_BUFFER_HEADER_T *buffer;
    MMAL_STATUS_T status;

    if (!ctx->pool_out)
        return AVERROR_UNKNOWN;

    while ((buffer = mmal_queue_get(ctx->pool_out->pool->queue))) {
        if ((status = mmal_port_send_buffer(ctx->decoder->output[0], buffer))) {
            mmal_buffer_header_release(buffer);
            av_log(avctx, AV_LOG_ERROR, "MMAL error %d when sending output buffer.\n", (int)status);
            return AVERROR_UNKNOWN;
        }
    }

    return 0;
}
