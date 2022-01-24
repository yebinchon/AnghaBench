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
struct TYPE_5__ {struct TYPE_5__* data; int /*<<< orphan*/  resample; } ;
typedef  TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_work_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if ( pv )
    {
        FUNC1(pv->resample);
        FUNC0( pv->data );
        FUNC0( pv );
        w->private_data = 0;
    }
}