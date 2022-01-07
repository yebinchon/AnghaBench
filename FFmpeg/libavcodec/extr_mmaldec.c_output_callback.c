
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {int queue_decoded_frames; } ;
struct TYPE_5__ {scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef TYPE_2__ MMALDecodeContext ;
typedef TYPE_3__ AVCodecContext ;


 int mmal_queue_put (int ,int *) ;

__attribute__((used)) static void output_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    AVCodecContext *avctx = (AVCodecContext*)port->userdata;
    MMALDecodeContext *ctx = avctx->priv_data;

    mmal_queue_put(ctx->queue_decoded_frames, buffer);
}
