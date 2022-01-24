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
struct TYPE_7__ {struct TYPE_7__* filename; int /*<<< orphan*/  x264; TYPE_1__* api; int /*<<< orphan*/  chapter_queue; } ;
typedef  TYPE_2__ hb_work_private_t ;
struct TYPE_8__ {TYPE_2__* private_data; } ;
typedef  TYPE_3__ hb_work_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* encoder_close ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == NULL)
    {
        // Not initialized
        return;
    }

    FUNC1(&pv->chapter_queue);

    pv->api->encoder_close( pv->x264 );
    FUNC0( pv->filename );
    FUNC0( pv );
    w->private_data = NULL;
}