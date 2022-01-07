
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_21__ {int buffer_size; } ;
struct TYPE_20__ {TYPE_4__* priv_data; } ;
struct TYPE_19__ {int flags; int ref; struct TYPE_19__* next; int length; int data; int dts; int pts; } ;
struct TYPE_18__ {int packets_buffered; TYPE_2__* decoder; TYPE_5__* waiting_buffers_tail; TYPE_5__* waiting_buffers; TYPE_1__* pool_in; } ;
struct TYPE_17__ {int flags; int alloc_size; TYPE_5__* user_data; int length; int data; int dts; int pts; scalar_t__ cmd; } ;
struct TYPE_16__ {TYPE_8__** input; } ;
struct TYPE_15__ {int queue; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;
typedef TYPE_4__ MMALDecodeContext ;
typedef TYPE_5__ FFBufferEntry ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ;
 int atomic_fetch_add (int *,int) ;
 int av_buffer_unref (int *) ;
 int av_free (TYPE_5__*) ;
 int av_log (TYPE_6__*,int ,char*,int) ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_buffer_header_reset (TYPE_3__*) ;
 scalar_t__ mmal_port_send_buffer (TYPE_8__*,TYPE_3__*) ;
 TYPE_3__* mmal_queue_get (int ) ;

__attribute__((used)) static int ffmmal_fill_input_port(AVCodecContext *avctx)
{
    MMALDecodeContext *ctx = avctx->priv_data;

    while (ctx->waiting_buffers) {
        MMAL_BUFFER_HEADER_T *mbuffer;
        FFBufferEntry *buffer;
        MMAL_STATUS_T status;

        mbuffer = mmal_queue_get(ctx->pool_in->queue);
        if (!mbuffer)
            return 0;

        buffer = ctx->waiting_buffers;

        mmal_buffer_header_reset(mbuffer);
        mbuffer->cmd = 0;
        mbuffer->pts = buffer->pts;
        mbuffer->dts = buffer->dts;
        mbuffer->flags = buffer->flags;
        mbuffer->data = buffer->data;
        mbuffer->length = buffer->length;
        mbuffer->user_data = buffer;
        mbuffer->alloc_size = ctx->decoder->input[0]->buffer_size;


        ctx->waiting_buffers = buffer->next;
        if (ctx->waiting_buffers_tail == buffer)
            ctx->waiting_buffers_tail = ((void*)0);

        if ((status = mmal_port_send_buffer(ctx->decoder->input[0], mbuffer))) {
            mmal_buffer_header_release(mbuffer);
            av_buffer_unref(&buffer->ref);
            if (buffer->flags & MMAL_BUFFER_HEADER_FLAG_FRAME_END)
                atomic_fetch_add(&ctx->packets_buffered, -1);
            av_free(buffer);
        }

        if (status) {
            av_log(avctx, AV_LOG_ERROR, "MMAL error %d when sending input\n", (int)status);
            return AVERROR_UNKNOWN;
        }
    }

    return 0;
}
