#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int data_size; scalar_t__ data; int /*<<< orphan*/  data_ref; } ;
typedef  TYPE_1__ VP9RawFrame ;
struct TYPE_7__ {int data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  data_ref; TYPE_1__* content; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ CodedBitstreamUnit ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cbs_vp9_free_frame ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(CodedBitstreamContext *ctx,
                             CodedBitstreamUnit *unit)
{
    VP9RawFrame *frame;
    GetBitContext gbc;
    int err, pos;

    err = FUNC6(&gbc, unit->data, 8 * unit->data_size);
    if (err < 0)
        return err;

    err = FUNC4(ctx, unit, sizeof(*frame),
                                    &cbs_vp9_free_frame);
    if (err < 0)
        return err;
    frame = unit->content;

    err = FUNC3(ctx, &gbc, frame);
    if (err < 0)
        return err;

    pos = FUNC5(&gbc);
    FUNC1(pos % 8 == 0);
    pos /= 8;
    FUNC1(pos <= unit->data_size);

    if (pos == unit->data_size) {
        // No data (e.g. a show-existing-frame frame).
    } else {
        frame->data_ref = FUNC2(unit->data_ref);
        if (!frame->data_ref)
            return FUNC0(ENOMEM);

        frame->data      = unit->data      + pos;
        frame->data_size = unit->data_size - pos;
    }

    return 0;
}