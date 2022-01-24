#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int capacity; int thresh; scalar_t__ buffer_size; void* cond_empty; void* cond_full; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ hb_fifo_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

hb_fifo_t * FUNC4( int capacity, int thresh )
{
    hb_fifo_t * f;
    f             = FUNC0( sizeof( hb_fifo_t ), 1 );
    f->lock       = FUNC3();
    f->cond_full  = FUNC2();
    f->cond_empty = FUNC2();
    f->capacity   = capacity;
    f->thresh     = thresh;
    f->buffer_size = 0;

#if defined(HB_FIFO_DEBUG)
    // Add the fifo to the global fifo list
    fifo_list_add( f );
#endif
    return f;
}