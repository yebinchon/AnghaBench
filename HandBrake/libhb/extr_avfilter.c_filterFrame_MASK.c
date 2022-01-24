#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  list; int /*<<< orphan*/  graph; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_12__ {int /*<<< orphan*/  start; int /*<<< orphan*/  stop; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_buffer_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static hb_buffer_t* FUNC7( hb_filter_private_t * pv, hb_buffer_t * in )
{
    hb_buffer_list_t   list;
    hb_buffer_t      * buf, * next;

    FUNC0(pv->graph, in);
    buf = FUNC1(pv->graph);
    while (buf != NULL)
    {
        FUNC2(&pv->list, buf);
        buf = FUNC1(pv->graph);
    }

    // Delay one frame so we can set the stop time of the output buffer
    FUNC3(&list);
    while (FUNC4(&pv->list) > 1)
    {
        buf  = FUNC6(&pv->list);
        next = FUNC5(&pv->list);

        buf->s.stop = next->s.start;
        FUNC2(&list, buf);
    }

    return FUNC5(&list);
}