#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int mb_width; int mb_height; TYPE_4__** framep; int /*<<< orphan*/  avctx; int /*<<< orphan*/  keyframe; } ;
typedef  TYPE_2__ VP8Context ;
struct TYPE_11__ {TYPE_3__* f; } ;
struct TYPE_14__ {TYPE_1__ tf; } ;
struct TYPE_13__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 size_t VP56_FRAME_GOLDEN ; 
 size_t VP56_FRAME_PREVIOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_4__*,int) ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(VP8Context *s, int alpha, int beta)
{
    int ret;

    if (!s->keyframe && (alpha || beta)) {
        int width  = s->mb_width * 16;
        int height = s->mb_height * 16;
        AVFrame *src, *dst;

        if (!s->framep[VP56_FRAME_PREVIOUS] ||
            !s->framep[VP56_FRAME_GOLDEN]) {
            FUNC0(s->avctx, AV_LOG_WARNING, "Discarding interframe without a prior keyframe!\n");
            return AVERROR_INVALIDDATA;
        }

        dst =
        src = s->framep[VP56_FRAME_PREVIOUS]->tf.f;

        /* preserve the golden frame, write a new previous frame */
        if (s->framep[VP56_FRAME_GOLDEN] == s->framep[VP56_FRAME_PREVIOUS]) {
            s->framep[VP56_FRAME_PREVIOUS] = FUNC4(s);
            if ((ret = FUNC3(s, s->framep[VP56_FRAME_PREVIOUS], 1)) < 0)
                return ret;

            dst = s->framep[VP56_FRAME_PREVIOUS]->tf.f;

            FUNC1(dst, src, width, height);
        }

        FUNC2(dst->data[0], dst->linesize[0],
             src->data[0], src->linesize[0],
             width, height, alpha, beta);
    }

    return 0;
}