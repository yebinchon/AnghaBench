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
struct TYPE_5__ {int size; int capacity; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond_empty; scalar_t__ wait_empty; TYPE_2__* last; TYPE_2__* first; int /*<<< orphan*/ * cond_alert_full; } ;
typedef  TYPE_1__ hb_fifo_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( hb_fifo_t * f, hb_buffer_t * b )
{
    if( !b )
    {
        return;
    }

    FUNC2( f->lock );
    if (f->size >= f->capacity &&
        f->cond_alert_full != NULL)
    {
        FUNC0( f->cond_alert_full );
    }
    if( f->size > 0 )
    {
        f->last->next = b;
    }
    else
    {
        f->first = b;
    }
    f->last  = b;
    f->size += 1;
    while( f->last->next )
    {
        f->size += 1;
        f->last  = f->last->next;
    }
    if( f->wait_empty && f->size >= 1 )
    {
        f->wait_empty = 0;
        FUNC1( f->cond_empty );
    }
    FUNC3( f->lock );
}