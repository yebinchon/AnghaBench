#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ file; TYPE_3__* context; int /*<<< orphan*/  chapter_queue; } ;
typedef  TYPE_1__ hb_work_private_t ;
struct TYPE_8__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_work_object_t ;
struct TYPE_9__ {scalar_t__ codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void FUNC6( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if (pv == NULL)
    {
        return;
    }
    FUNC4(&pv->chapter_queue);
    if( pv->context )
    {
        FUNC5( 2, "encavcodec: closing libavcodec" );
        if( pv->context->codec ) {
            FUNC0( pv->context );
        }
        FUNC3(&pv->context);
    }
    if( pv->file )
    {
        FUNC1( pv->file );
    }
    FUNC2( pv );
    w->private_data = NULL;
}