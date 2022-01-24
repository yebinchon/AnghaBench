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
struct TYPE_7__ {int alloc; int /*<<< orphan*/ * next; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4( hb_buffer_t * b, int size )
{

    if ( size < b->alloc / 8 || b->data == NULL )
    {
        hb_buffer_t * tmp = FUNC1( size );

        FUNC2( b, tmp );
        FUNC3( b->data, tmp->data, size );
        tmp->next = NULL;
        FUNC0( &tmp );
    }
}