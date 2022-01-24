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
struct pullup_field {int parity; struct pullup_field* next; int /*<<< orphan*/  var; int /*<<< orphan*/  comb; struct pullup_field* prev; int /*<<< orphan*/  diffs; scalar_t__ affinity; scalar_t__ breaks; scalar_t__ flags; int /*<<< orphan*/  buffer; } ;
struct pullup_context {struct pullup_field* head; struct pullup_field* last; struct pullup_field* first; int /*<<< orphan*/  var; int /*<<< orphan*/  comb; int /*<<< orphan*/  diff; } ;
struct pullup_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pullup_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct pullup_context*,struct pullup_field*,int,struct pullup_field*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pullup_buffer*,int) ; 

void FUNC3( struct pullup_context * c,
                          struct pullup_buffer * b,
                          int parity )
{
    struct pullup_field * f;

    /* Grow the circular list if needed */
    FUNC0( c );

    /* Cannot have two fields of same parity in a row; drop the new one */
    if( c->last && c->last->parity == parity ) return;

    f = c->head;
    f->parity = parity;
    f->buffer = FUNC2( b, parity );
    f->flags = 0;
    f->breaks = 0;
    f->affinity = 0;

    FUNC1( c, f, parity, f->prev->prev,
                           parity, c->diff, f->diffs );
    FUNC1( c, parity?f->prev:f, 0,
                           parity?f:f->prev, 1, c->comb, f->comb );
    FUNC1( c, f, parity, f,
                           -1, c->var, f->var );

    /* Advance the circular list */
    if( !c->first ) c->first = c->head;
    c->last = c->head;
    c->head = c->head->next;
}