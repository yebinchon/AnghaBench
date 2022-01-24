#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; TYPE_1__* list; int /*<<< orphan*/ * packet; } ;
struct TYPE_7__ {TYPE_2__ ts; int /*<<< orphan*/ * file_handle; } ;
typedef  TYPE_3__ hb_stream_t ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC3( hb_stream_t *d )
{
    if( d->file_handle )
    {
        FUNC0( d->file_handle );
        d->file_handle = NULL;
    }

    int i=0;

    if ( d->ts.packet )
    {
        FUNC1( d->ts.packet );
        d->ts.packet = NULL;
    }
    if ( d->ts.list )
    {
        for (i = 0; i < d->ts.count; i++)
        {
            if (d->ts.list[i].buf)
            {
                FUNC2(&(d->ts.list[i].buf));
                d->ts.list[i].buf = NULL;
            }
        }
    }
}