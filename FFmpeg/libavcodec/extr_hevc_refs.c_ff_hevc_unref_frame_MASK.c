#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/ * hwaccel_picture_private; int /*<<< orphan*/  hwaccel_priv_buf; int /*<<< orphan*/ * collocated_ref; int /*<<< orphan*/ * refPicList; int /*<<< orphan*/ * rpl_tab; int /*<<< orphan*/  rpl_tab_buf; int /*<<< orphan*/  rpl_buf; int /*<<< orphan*/ * tab_mvf; int /*<<< orphan*/  tab_mvf_buf; int /*<<< orphan*/  tf; TYPE_1__* frame; } ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_2__ HEVCFrame ;
typedef  TYPE_3__ HEVCContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(HEVCContext *s, HEVCFrame *frame, int flags)
{
    /* frame->frame can be NULL if context init failed */
    if (!frame->frame || !frame->frame->buf[0])
        return;

    frame->flags &= ~flags;
    if (!frame->flags) {
        FUNC1(s->avctx, &frame->tf);

        FUNC0(&frame->tab_mvf_buf);
        frame->tab_mvf = NULL;

        FUNC0(&frame->rpl_buf);
        FUNC0(&frame->rpl_tab_buf);
        frame->rpl_tab    = NULL;
        frame->refPicList = NULL;

        frame->collocated_ref = NULL;

        FUNC0(&frame->hwaccel_priv_buf);
        frame->hwaccel_picture_private = NULL;
    }
}