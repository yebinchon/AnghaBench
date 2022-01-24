#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int yadif_ready; int /*<<< orphan*/  out_list; TYPE_4__** ref; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_18__ {TYPE_2__* private_data; } ;
typedef  TYPE_3__ hb_filter_object_t ;
struct TYPE_16__ {int flags; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
typedef  TYPE_4__ hb_buffer_t ;

/* Variables and functions */
 int HB_BUF_FLAG_EOF ; 
 int HB_FILTER_DELAY ; 
 int HB_FILTER_DONE ; 
 int HB_FILTER_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC6( hb_filter_object_t * filter,
                           hb_buffer_t ** buf_in,
                           hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;

    // Input buffer is always consumed.
    *buf_in = NULL;
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        if (pv->ref[2] != NULL)
        {
            // Duplicate last frame and process refs
            FUNC5(pv, FUNC1(pv->ref[2]));
            FUNC4(pv);
        }
        FUNC2(&pv->out_list, in);
        *buf_out = FUNC3(&pv->out_list);
        return HB_FILTER_DONE;
    }

    FUNC0(in);

    // yadif requires 3 buffers, prev, cur, and next.  For the first
    // frame, there can be no prev, so we duplicate the first frame.
    if (!pv->yadif_ready)
    {
        // If yadif is not ready, store another ref and return HB_FILTER_DELAY
        FUNC5(pv, FUNC1(in));
        FUNC5(pv, in);
        pv->yadif_ready = 1;
        // Wait for next
        return HB_FILTER_DELAY;
    }

    FUNC5(pv, in);
    FUNC4(pv);

    *buf_out = FUNC3(&pv->out_list);
    return HB_FILTER_OK;
}