#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_filter_private_t ;
struct TYPE_14__ {int /*<<< orphan*/ * private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;
struct TYPE_13__ {int flags; } ;
struct TYPE_15__ {TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;

/* Variables and functions */
 int HB_BUF_FLAG_EOF ; 
 int HB_FILTER_DONE ; 
 int HB_FILTER_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(hb_filter_object_t *filter,
                           hb_buffer_t **buf_in,
                           hb_buffer_t **buf_out )
{
    hb_filter_private_t *pv = filter->private_data;
    hb_buffer_t *in = *buf_in;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        hb_buffer_list_t list;
        hb_buffer_t *buf;

        // Flush buffered frames
        buf = FUNC5(pv);
        FUNC2(&list, buf);

        // And terminate the buffer list with a EOF buffer
        FUNC0(&list, in);
        *buf_out = FUNC1(&list);

        *buf_in  = NULL;
        return HB_FILTER_DONE;
    }

    FUNC3(pv, in);
    *buf_out = FUNC4(pv);

    return HB_FILTER_OK;
}