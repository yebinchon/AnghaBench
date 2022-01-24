#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cond_full; int /*<<< orphan*/  cond_empty; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ hb_fifo_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8( hb_fifo_t ** _f )
{
    hb_fifo_t   * f = *_f;
    hb_buffer_t * b;

    if ( f == NULL )
        return;

    FUNC4( 2, "fifo_close: trashing %d buffer(s)", FUNC6( f ) );
    while( ( b = FUNC5( f ) ) )
    {
        FUNC2( &b );
    }

    FUNC7( &f->lock );
    FUNC3( &f->cond_empty );
    FUNC3( &f->cond_full );

#if defined(HB_FIFO_DEBUG)
    // Remove the fifo from the global fifo list
    fifo_list_rem( f );
#endif

    FUNC1( f );

    *_f = NULL;
}