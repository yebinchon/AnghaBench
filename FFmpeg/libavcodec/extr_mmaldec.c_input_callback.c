
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_13__ {int flags; int ref; } ;
struct TYPE_12__ {int packets_buffered; } ;
struct TYPE_11__ {TYPE_4__* user_data; int cmd; } ;
struct TYPE_10__ {scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_3__ MMALDecodeContext ;
typedef TYPE_4__ FFBufferEntry ;
typedef TYPE_5__ AVCodecContext ;


 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ;
 int atomic_fetch_add (int *,int) ;
 int av_buffer_unref (int *) ;
 int av_free (TYPE_4__*) ;
 int mmal_buffer_header_release (TYPE_2__*) ;

__attribute__((used)) static void input_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    AVCodecContext *avctx = (AVCodecContext*)port->userdata;
    MMALDecodeContext *ctx = avctx->priv_data;

    if (!buffer->cmd) {
        FFBufferEntry *entry = buffer->user_data;
        av_buffer_unref(&entry->ref);
        if (entry->flags & MMAL_BUFFER_HEADER_FLAG_FRAME_END)
            atomic_fetch_add(&ctx->packets_buffered, -1);
        av_free(entry);
    }
    mmal_buffer_header_release(buffer);
}
