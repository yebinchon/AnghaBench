#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  format; } ;
struct TYPE_24__ {TYPE_4__* priv_data; } ;
struct TYPE_23__ {int eos_received; int /*<<< orphan*/  frames_output; int /*<<< orphan*/  queue_decoded_frames; TYPE_2__* decoder; scalar_t__ eos_sent; scalar_t__ packets_sent; int /*<<< orphan*/  packets_buffered; } ;
struct TYPE_22__ {int flags; scalar_t__ cmd; scalar_t__ length; } ;
struct TYPE_21__ {TYPE_8__** output; } ;
struct TYPE_20__ {int /*<<< orphan*/  format; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;
typedef  TYPE_4__ MMALDecodeContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ MAX_DELAYED_FRAMES ; 
 int MMAL_BUFFER_HEADER_FLAG_EOS ; 
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_8__*) ; 
 scalar_t__ FUNC11 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  output_callback ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx, AVFrame *frame, int *got_frame)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    MMAL_BUFFER_HEADER_T *buffer = NULL;
    MMAL_STATUS_T status = 0;
    int ret = 0;

    if (ctx->eos_received)
        goto done;

    while (1) {
        // To ensure decoding in lockstep with a constant delay between fed packets
        // and output frames, we always wait until an output buffer is available.
        // Except during start we don't know after how many input packets the decoder
        // is going to return the first buffer, and we can't distinguish decoder
        // being busy from decoder waiting for input. So just poll at the start and
        // keep feeding new data to the buffer.
        // We are pretty sure the decoder will produce output if we sent more input
        // frames than what a H.264 decoder could logically delay. This avoids too
        // excessive buffering.
        // We also wait if we sent eos, but didn't receive it yet (think of decoding
        // stream with a very low number of frames).
        if (FUNC0(&ctx->packets_buffered) > MAX_DELAYED_FRAMES ||
            (ctx->packets_sent && ctx->eos_sent)) {
            // MMAL will ignore broken input packets, which means the frame we
            // expect here may never arrive. Dealing with this correctly is
            // complicated, so here's a hack to avoid that it freezes forever
            // in this unlikely situation.
            buffer = FUNC13(ctx->queue_decoded_frames, 100);
            if (!buffer) {
                FUNC2(avctx, AV_LOG_ERROR, "Did not get output frame from MMAL.\n");
                ret = AVERROR_UNKNOWN;
                goto done;
            }
        } else {
            buffer = FUNC12(ctx->queue_decoded_frames);
            if (!buffer)
                goto done;
        }

        ctx->eos_received |= !!(buffer->flags & MMAL_BUFFER_HEADER_FLAG_EOS);
        if (ctx->eos_received)
            goto done;

        if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED) {
            MMAL_COMPONENT_T *decoder = ctx->decoder;
            MMAL_EVENT_FORMAT_CHANGED_T *ev = FUNC8(buffer);
            MMAL_BUFFER_HEADER_T *stale_buffer;

            FUNC2(avctx, AV_LOG_INFO, "Changing output format.\n");

            if ((status = FUNC10(decoder->output[0])))
                goto done;

            while ((stale_buffer = FUNC12(ctx->queue_decoded_frames)))
                FUNC7(stale_buffer);

            FUNC9(decoder->output[0]->format, ev->format);

            if ((ret = FUNC4(avctx)) < 0)
                goto done;

            if ((status = FUNC11(decoder->output[0], output_callback)))
                goto done;

            if ((ret = FUNC6(avctx)) < 0)
                goto done;

            if ((ret = FUNC5(avctx)) < 0)
                goto done;

            FUNC7(buffer);
            continue;
        } else if (buffer->cmd) {
            FUNC2(avctx, AV_LOG_WARNING, "Unknown MMAL event %s on output port\n",
                   FUNC1(buffer->cmd));
            goto done;
        } else if (buffer->length == 0) {
            // Unused output buffer that got drained after format change.
            FUNC7(buffer);
            continue;
        }

        ctx->frames_output++;

        if ((ret = FUNC3(avctx, frame, buffer)) < 0)
            goto done;

        *got_frame = 1;
        break;
    }

done:
    if (buffer)
        FUNC7(buffer);
    if (status && ret >= 0)
        ret = AVERROR_UNKNOWN;
    return ret;
}