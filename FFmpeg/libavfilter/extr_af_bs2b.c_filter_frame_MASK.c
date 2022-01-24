#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* dst; } ;
struct TYPE_19__ {int /*<<< orphan*/  nb_samples; int /*<<< orphan*/ * extended_data; } ;
struct TYPE_18__ {int /*<<< orphan*/  bs2bp; int /*<<< orphan*/  (* filter ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ Bs2bContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *frame)
{
    int ret;
    AVFrame *out_frame;

    Bs2bContext     *bs2b = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];

    if (FUNC4(frame)) {
        out_frame = frame;
    } else {
        out_frame = FUNC6(outlink, frame->nb_samples);
        if (!out_frame) {
            FUNC3(&frame);
            return FUNC0(ENOMEM);
        }
        FUNC1(out_frame, frame);
        ret = FUNC2(out_frame, frame);
        if (ret < 0) {
            FUNC3(&out_frame);
            FUNC3(&frame);
            return ret;
        }
    }

    bs2b->filter(bs2b->bs2bp, out_frame->extended_data[0], out_frame->nb_samples);

    if (frame != out_frame)
        FUNC3(&frame);

    return FUNC5(outlink, out_frame);
}