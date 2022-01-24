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
struct pullup_field {struct pullup_field* prev; struct pullup_field* next; } ;
struct pullup_context {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pullup_context*,struct pullup_field*) ; 

__attribute__((used)) static struct pullup_field * FUNC2( struct pullup_context * c,
                                                      int len )
{
    struct pullup_field * head, * f;
    f = head = FUNC0( 1, sizeof(struct pullup_field) );
    FUNC1( c, f );
    for ( ; len > 0; len-- )
    {
        f->next = FUNC0( 1, sizeof(struct pullup_field) );
        f->next->prev = f;
        f = f->next;
        FUNC1( c, f );
    }
    f->next = head;
    head->prev = f;
    return head;
}