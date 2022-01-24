#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  ref; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ extradata_sent; scalar_t__ packets_sent; scalar_t__ eos_sent; scalar_t__ eos_received; scalar_t__ frames_output; int /*<<< orphan*/  packets_buffered; int /*<<< orphan*/ * waiting_buffers_tail; TYPE_3__* waiting_buffers; int /*<<< orphan*/  queue_decoded_frames; TYPE_1__* decoder; } ;
struct TYPE_7__ {int /*<<< orphan*/  control; int /*<<< orphan*/ * output; int /*<<< orphan*/ * input; } ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;
typedef  TYPE_2__ MMALDecodeContext ;
typedef  TYPE_3__ FFBufferEntry ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(AVCodecContext *avctx)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    MMAL_COMPONENT_T *decoder = ctx->decoder;
    MMAL_BUFFER_HEADER_T *buffer;

    FUNC6(decoder->input[0]);
    FUNC6(decoder->output[0]);
    FUNC6(decoder->control);

    FUNC7(decoder->input[0]);
    FUNC7(decoder->output[0]);
    FUNC7(decoder->control);

    while ((buffer = FUNC8(ctx->queue_decoded_frames)))
        FUNC5(buffer);

    while (ctx->waiting_buffers) {
        FFBufferEntry *buffer = ctx->waiting_buffers;

        ctx->waiting_buffers = buffer->next;

        if (buffer->flags & MMAL_BUFFER_HEADER_FLAG_FRAME_END)
            FUNC0(&ctx->packets_buffered, -1);

        FUNC3(&buffer->ref);
        FUNC4(buffer);
    }
    ctx->waiting_buffers_tail = NULL;

    FUNC2(FUNC1(&ctx->packets_buffered) == 0);

    ctx->frames_output = ctx->eos_received = ctx->eos_sent = ctx->packets_sent = ctx->extradata_sent = 0;
}