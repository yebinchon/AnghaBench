#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int type; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  dst; } ;
struct TYPE_13__ {int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  extended_data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  linesize; scalar_t__ data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(AVFilterLink *link, AVFrame **rframe)
{
    AVFrame *frame = *rframe;
    AVFrame *out;
    int ret;

    if (FUNC4(frame))
        return 0;
    FUNC6(link->dst, AV_LOG_DEBUG, "Copying data in avfilter.\n");

    switch (link->type) {
    case AVMEDIA_TYPE_VIDEO:
        out = FUNC9(link, link->w, link->h);
        break;
    case AVMEDIA_TYPE_AUDIO:
        out = FUNC8(link, frame->nb_samples);
        break;
    default:
        return FUNC0(EINVAL);
    }
    if (!out)
        return FUNC0(ENOMEM);

    ret = FUNC2(out, frame);
    if (ret < 0) {
        FUNC3(&out);
        return ret;
    }

    switch (link->type) {
    case AVMEDIA_TYPE_VIDEO:
        FUNC5(out->data, out->linesize, (const uint8_t **)frame->data, frame->linesize,
                      frame->format, frame->width, frame->height);
        break;
    case AVMEDIA_TYPE_AUDIO:
        FUNC7(out->extended_data, frame->extended_data,
                        0, 0, frame->nb_samples,
                        frame->channels,
                        frame->format);
        break;
    default:
        FUNC1(!"reached");
    }

    FUNC3(&frame);
    *rframe = out;
    return 0;
}