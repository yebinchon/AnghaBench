#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pullup_field {struct pullup_field* next; } ;
struct pullup_context {int /*<<< orphan*/  last; struct pullup_field* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pullup_context*,struct pullup_field*) ; 
 int /*<<< orphan*/  FUNC1 (struct pullup_context*,struct pullup_field*) ; 
 int FUNC2 (struct pullup_field*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( struct pullup_context * c )
{
    struct pullup_field * f = c->first;
    int i, n = FUNC2 (f, c->last );
    for( i = 0; i < n-1; i++ )
    {
        if( i < n-3 ) FUNC1( c, f );
        FUNC0( c, f );
        f = f->next;
    }
}