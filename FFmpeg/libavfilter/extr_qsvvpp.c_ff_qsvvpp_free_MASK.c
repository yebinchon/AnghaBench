#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* frame_infos; struct TYPE_4__* ext_buffers; struct TYPE_4__* surface_ptrs_out; struct TYPE_4__* surface_ptrs_in; int /*<<< orphan*/  out_frame_list; int /*<<< orphan*/  in_frame_list; scalar_t__ session; } ;
typedef  TYPE_1__ QSVVPPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(QSVVPPContext **vpp)
{
    QSVVPPContext *s = *vpp;

    if (!s)
        return 0;

    if (s->session) {
        FUNC1(s->session);
        FUNC0(s->session);
    }

    /* release all the resources */
    FUNC3(&s->in_frame_list);
    FUNC3(&s->out_frame_list);
    FUNC2(&s->surface_ptrs_in);
    FUNC2(&s->surface_ptrs_out);
    FUNC2(&s->ext_buffers);
    FUNC2(&s->frame_infos);
    FUNC2(vpp);

    return 0;
}