#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int /*<<< orphan*/  lock; TYPE_1__* first; } ;
typedef  TYPE_2__ hb_fifo_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

hb_buffer_t * FUNC2( hb_fifo_t * f )
{
    hb_buffer_t * b;

    FUNC0( f->lock );
    if( f->size < 2 )
    {
        FUNC1( f->lock );
        return NULL;
    }
    b = f->first->next;
    FUNC1( f->lock );

    return b;
}