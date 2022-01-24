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
struct TYPE_4__ {int thread; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ hb_cond_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

hb_cond_t * FUNC2()
{
    hb_cond_t * c = FUNC0( sizeof( hb_cond_t ), 1 );

    if( c == NULL )
        return NULL;

#if defined( SYS_BEOS )
    c->thread = -1;
#elif USE_PTHREAD
    pthread_cond_init( &c->cond, NULL );
//#elif defined( SYS_CYGWIN )
//    c->event = CreateEvent( NULL, FALSE, FALSE, NULL );
#endif

    return c;
}