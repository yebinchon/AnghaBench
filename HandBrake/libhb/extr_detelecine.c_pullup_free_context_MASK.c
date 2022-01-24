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
struct pullup_field {struct pullup_field* frame; struct pullup_field* comb; struct pullup_field* diffs; struct pullup_field* prev; struct pullup_field* next; struct pullup_field* head; struct pullup_field* buffers; } ;
struct pullup_context {struct pullup_context* frame; struct pullup_context* comb; struct pullup_context* diffs; struct pullup_context* prev; struct pullup_context* next; struct pullup_context* head; struct pullup_context* buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pullup_field*) ; 

void FUNC1( struct pullup_context * c )
{
    struct pullup_field * f;

    FUNC0( c->buffers );

    f = c->head->next;
    while( f != c->head )
    {
        FUNC0( f->diffs );
        FUNC0( f->comb );
        f = f->next;
        FUNC0( f->prev );
    }
    FUNC0( f->diffs );
    FUNC0( f->comb );
    FUNC0(f);

    FUNC0( c->frame );
    FUNC0( c );
}