
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {TYPE_1__* decoder; } ;
struct TYPE_7__ {int * output; int * input; int control; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;
typedef TYPE_2__ MMALDecodeContext ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int control_port_cb ;
 int ffmmal_stop_decoder (TYPE_3__*) ;
 int input_callback ;
 scalar_t__ mmal_port_enable (int ,int ) ;
 int output_callback ;

__attribute__((used)) static void ffmmal_flush(AVCodecContext *avctx)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    MMAL_COMPONENT_T *decoder = ctx->decoder;
    MMAL_STATUS_T status;

    ffmmal_stop_decoder(avctx);

    if ((status = mmal_port_enable(decoder->control, control_port_cb)))
        goto fail;
    if ((status = mmal_port_enable(decoder->input[0], input_callback)))
        goto fail;
    if ((status = mmal_port_enable(decoder->output[0], output_callback)))
        goto fail;

    return;

fail:
    av_log(avctx, AV_LOG_ERROR, "MMAL flush error: %i\n", (int)status);
}
