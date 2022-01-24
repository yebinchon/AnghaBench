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
struct TYPE_17__ {int comb_detect_ready; int /*<<< orphan*/  out_list; TYPE_4__** ref; } ;
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
 TYPE_4__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC7( hb_filter_object_t * filter,
                             hb_buffer_t ** buf_in,
                             hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t         * in = *buf_in;

    // Input buffer is always consumed.
    *buf_in = NULL;
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        // Duplicate last frame and process refs
        FUNC6(pv, FUNC0(pv->ref[2]));
        if (pv->ref[0] != NULL)
        {
            FUNC5(pv);
        }
        FUNC1(&pv->out_list, in);
        *buf_out = FUNC2(&pv->out_list);
        return HB_FILTER_DONE;
    }

    // comb detect requires 3 buffers, prev, cur, and next.  For the first
    // frame, there can be no prev, so we duplicate the first frame.
    if (!pv->comb_detect_ready)
    {
        // If not ready, store duplicate ref and return HB_FILTER_DELAY
        FUNC6(pv, FUNC0(in));
        FUNC6(pv, in);
        pv->comb_detect_ready = 1;
        // Wait for next
        return HB_FILTER_DELAY;
    }

    FUNC6(pv, in);
    FUNC5(pv);

    // Output buffers may also be in comb detect's internal ref list.
    // Since buffers are not reference counted, we must wait until
    // we are certain they are no longer in the ref list before sending
    // down the pipeline where they will ultimately get closed.
    if (FUNC3(&pv->out_list) > 3)
    {
        *buf_out = FUNC4(&pv->out_list);
    }
    return HB_FILTER_OK;
}