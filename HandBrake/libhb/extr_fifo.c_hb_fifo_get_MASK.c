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
struct TYPE_5__ {int size; int capacity; int thresh; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond_full; scalar_t__ wait_full; TYPE_2__* first; } ;
typedef  TYPE_1__ hb_fifo_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

hb_buffer_t * FUNC3( hb_fifo_t * f )
{
    hb_buffer_t * b;

    FUNC1( f->lock );
    if( f->size < 1 )
    {
        FUNC2( f->lock );
        return NULL;
    }
    b         = f->first;
    f->first  = b->next;
    b->next   = NULL;
    f->size  -= 1;
    if( f->wait_full && f->size == f->capacity - f->thresh )
    {
        f->wait_full = 0;
        FUNC0( f->cond_full );
    }
    FUNC2( f->lock );

    return b;
}