#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ duration; int /*<<< orphan*/  nb_frame; int /*<<< orphan*/  pts; int /*<<< orphan*/  (* fill_picture_fn ) (TYPE_4__*,TYPE_2__*) ;scalar_t__ draw_once; int /*<<< orphan*/  sar; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* picref; scalar_t__ draw_once_reset; int /*<<< orphan*/  time_base; } ;
typedef  TYPE_1__ TestSourceContext ;
struct TYPE_18__ {TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* src; } ;
struct TYPE_16__ {int key_frame; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  pict_type; scalar_t__ interlaced_frame; int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 void* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *outlink)
{
    TestSourceContext *test = outlink->src->priv;
    AVFrame *frame;

    if (test->duration >= 0 &&
        FUNC3(test->pts, test->time_base, AV_TIME_BASE_Q) >= test->duration)
        return AVERROR_EOF;

    if (test->draw_once) {
        if (test->draw_once_reset) {
            FUNC2(&test->picref);
            test->draw_once_reset = 0;
        }
        if (!test->picref) {
            test->picref =
                FUNC5(outlink, test->w, test->h);
            if (!test->picref)
                return FUNC0(ENOMEM);
            test->fill_picture_fn(outlink->src, test->picref);
        }
        frame = FUNC1(test->picref);
    } else
        frame = FUNC5(outlink, test->w, test->h);

    if (!frame)
        return FUNC0(ENOMEM);
    frame->pts                 = test->pts;
    frame->key_frame           = 1;
    frame->interlaced_frame    = 0;
    frame->pict_type           = AV_PICTURE_TYPE_I;
    frame->sample_aspect_ratio = test->sar;
    if (!test->draw_once)
        test->fill_picture_fn(outlink->src, frame);

    test->pts++;
    test->nb_frame++;

    return FUNC4(outlink, frame);
}