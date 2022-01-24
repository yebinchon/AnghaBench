#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_2__ hb_work_private_t ;
struct TYPE_15__ {TYPE_2__* private_data; } ;
typedef  TYPE_3__ hb_work_object_t ;
struct TYPE_13__ {int flags; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
typedef  TYPE_4__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int HB_BUF_FLAG_EOF ; 
 int HB_WORK_DONE ; 
 int HB_WORK_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 

int FUNC4( hb_work_object_t * w, hb_buffer_t ** buf_in,
                   hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * buf;
    hb_buffer_list_t list;

    *buf_in = NULL;
    FUNC2(&list);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        /* EOF on input - send it downstream & say we're done */
        *buf_out = in;
        return HB_WORK_DONE;
    }

    FUNC3(pv->list, in);

    buf = FUNC0( w );
    while (buf)
    {
        FUNC1(&list, buf);
        buf = FUNC0( w );
    }

    *buf_out = FUNC2(&list);
    return HB_WORK_OK;
}