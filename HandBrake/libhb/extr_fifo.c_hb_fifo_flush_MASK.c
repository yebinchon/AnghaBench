#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond_full; int /*<<< orphan*/  cond_empty; } ;
typedef  TYPE_1__ hb_fifo_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5( hb_fifo_t * f )
{
    hb_buffer_t * b;

    while( ( b = FUNC2( f ) ) )
    {
        FUNC0( &b );
    }
    FUNC3( f->lock );
    FUNC1( f->cond_empty );
    FUNC1( f->cond_full );
    FUNC4( f->lock );

}