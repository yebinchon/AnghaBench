#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  samples_skipped; } ;
struct TYPE_18__ {int /*<<< orphan*/  time_base; TYPE_9__ fifo; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  min_samples; } ;
struct TYPE_17__ {unsigned int nb_samples; int /*<<< orphan*/  extended_data; int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_9__*,unsigned int) ; 
 unsigned int FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_9__*) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *link, unsigned min, unsigned max,
                        AVFrame **rframe)
{
    AVFrame *frame0, *frame, *buf;
    unsigned nb_samples, nb_frames, i, p;
    int ret;

    /* Note: this function relies on no format changes and must only be
       called with enough samples. */
    FUNC1(FUNC10(link, link->min_samples));
    frame0 = frame = FUNC5(&link->fifo, 0);
    if (!link->fifo.samples_skipped && frame->nb_samples >= min && frame->nb_samples <= max) {
        *rframe = FUNC8(&link->fifo);
        return 0;
    }
    nb_frames = 0;
    nb_samples = 0;
    while (1) {
        if (nb_samples + frame->nb_samples > max) {
            if (nb_samples < min)
                nb_samples = max;
            break;
        }
        nb_samples += frame->nb_samples;
        nb_frames++;
        if (nb_frames == FUNC6(&link->fifo))
            break;
        frame = FUNC5(&link->fifo, nb_frames);
    }

    buf = FUNC9(link, nb_samples);
    if (!buf)
        return FUNC0(ENOMEM);
    ret = FUNC2(buf, frame0);
    if (ret < 0) {
        FUNC3(&buf);
        return ret;
    }
    buf->pts = frame0->pts;

    p = 0;
    for (i = 0; i < nb_frames; i++) {
        frame = FUNC8(&link->fifo);
        FUNC4(buf->extended_data, frame->extended_data, p, 0,
                        frame->nb_samples, link->channels, link->format);
        p += frame->nb_samples;
        FUNC3(&frame);
    }
    if (p < nb_samples) {
        unsigned n = nb_samples - p;
        frame = FUNC5(&link->fifo, 0);
        FUNC4(buf->extended_data, frame->extended_data, p, 0, n,
                        link->channels, link->format);
        FUNC7(&link->fifo, n, link->time_base);
    }

    *rframe = buf;
    return 0;
}