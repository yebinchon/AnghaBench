#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int splice_list_size; struct TYPE_5__* splice_list; struct TYPE_5__* fifos; int /*<<< orphan*/  list; scalar_t__ stream; scalar_t__ dvd; scalar_t__ bd; } ;
typedef  TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_work_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static void FUNC7( hb_work_object_t * w )
{
    hb_work_private_t * r = w->private_data;

    if ( r == NULL )
    {
        return;
    }
    if (r->bd)
    {
        FUNC2( r->bd );
        FUNC1( &r->bd );
    }
    else if (r->dvd)
    {
        FUNC5( r->dvd );
        FUNC4( &r->dvd );
    }
    else if (r->stream)
    {
        FUNC6(&r->stream);
    }

    int ii;
    for (ii = 0; ii < r->splice_list_size; ii++)
    {
        FUNC3(&r->splice_list[ii].list);
    }

    FUNC0(r->fifos);
    FUNC0(r->splice_list);
    FUNC0(r);
}