#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; int wait_empty; int /*<<< orphan*/  lock; int /*<<< orphan*/ * first; int /*<<< orphan*/  cond_empty; } ;
typedef  TYPE_1__ hb_fifo_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

hb_buffer_t * FUNC3( hb_fifo_t * f )
{
    hb_buffer_t * b;

    FUNC1( f->lock );
    if( f->size < 1 )
    {
        f->wait_empty = 1;
        FUNC0( f->cond_empty, f->lock, FIFO_TIMEOUT );
        if( f->size < 1 )
        {
            FUNC2( f->lock );
            return NULL;
        }
    }
    b = f->first;
    FUNC2( f->lock );

    return b;
}