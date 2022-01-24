#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ buffer; } ;
struct TYPE_19__ {int nb_inputs; TYPE_1__* priv; TYPE_4__** outputs; } ;
struct TYPE_18__ {int /*<<< orphan*/  format; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_17__ {int nb_samples; int* linesize; int nb_extended_buf; void** data; void** extended_data; int /*<<< orphan*/  pts; int /*<<< orphan*/  format; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; void** extended_buf; void** buf; } ;
struct TYPE_16__ {size_t input; size_t in_channel_idx; } ;
struct TYPE_15__ {int nb_channels; TYPE_3__** input_frames; TYPE_6__** buffers; TYPE_2__* channels; } ;
typedef  TYPE_1__ JoinContext ;
typedef  TYPE_2__ ChannelMap ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;
typedef  TYPE_6__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (void**) ; 
 int INT_MAX ; 
 void* FUNC3 (TYPE_6__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 TYPE_6__* FUNC6 (TYPE_3__*,size_t) ; 
 void* FUNC7 (int,int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (void**,void**,int) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    AVFilterLink *outlink = ctx->outputs[0];
    JoinContext *s       = ctx->priv;
    AVFrame *frame;
    int linesize   = INT_MAX;
    int nb_samples = INT_MAX;
    int nb_buffers = 0;
    int i, j, ret;

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (!s->input_frames[i])
            return 0;
        nb_samples = FUNC1(nb_samples, s->input_frames[i]->nb_samples);
    }
    if (!nb_samples)
        return 0;

    /* setup the output frame */
    frame = FUNC4();
    if (!frame)
        return FUNC0(ENOMEM);
    if (s->nb_channels > FUNC2(frame->data)) {
        frame->extended_data = FUNC7(s->nb_channels,
                                          sizeof(*frame->extended_data));
        if (!frame->extended_data) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
    }

    /* copy the data pointers */
    for (i = 0; i < s->nb_channels; i++) {
        ChannelMap *ch = &s->channels[i];
        AVFrame *cur   = s->input_frames[ch->input];
        AVBufferRef *buf;

        frame->extended_data[i] = cur->extended_data[ch->in_channel_idx];
        linesize = FUNC1(linesize, cur->linesize[0]);

        /* add the buffer where this plan is stored to the list if it's
         * not already there */
        buf = FUNC6(cur, ch->in_channel_idx);
        if (!buf) {
            ret = FUNC0(EINVAL);
            goto fail;
        }
        for (j = 0; j < nb_buffers; j++)
            if (s->buffers[j]->buffer == buf->buffer)
                break;
        if (j == i)
            s->buffers[nb_buffers++] = buf;
    }

    /* create references to the buffers we copied to output */
    if (nb_buffers > FUNC2(frame->buf)) {
        frame->nb_extended_buf = nb_buffers - FUNC2(frame->buf);
        frame->extended_buf = FUNC7(frame->nb_extended_buf,
                                               sizeof(*frame->extended_buf));
        if (!frame->extended_buf) {
            frame->nb_extended_buf = 0;
            ret = FUNC0(ENOMEM);
            goto fail;
        }
    }
    for (i = 0; i < FUNC1(FUNC2(frame->buf), nb_buffers); i++) {
        frame->buf[i] = FUNC3(s->buffers[i]);
        if (!frame->buf[i]) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
    }
    for (i = 0; i < frame->nb_extended_buf; i++) {
        frame->extended_buf[i] = FUNC3(s->buffers[i +
                                               FUNC2(frame->buf)]);
        if (!frame->extended_buf[i]) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
    }

    frame->nb_samples     = nb_samples;
    frame->channel_layout = outlink->channel_layout;
    frame->channels       = outlink->channels;
    frame->sample_rate    = outlink->sample_rate;
    frame->format         = outlink->format;
    frame->pts            = s->input_frames[0]->pts;
    frame->linesize[0]    = linesize;
    if (frame->data != frame->extended_data) {
        FUNC9(frame->data, frame->extended_data, sizeof(*frame->data) *
               FUNC1(FUNC2(frame->data), s->nb_channels));
    }

    ret = FUNC8(outlink, frame);

    for (i = 0; i < ctx->nb_inputs; i++)
        FUNC5(&s->input_frames[i]);

    return ret;

fail:
    FUNC5(&frame);
    return ret;
}