
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {int parity; struct pullup_field* next; int var; int comb; struct pullup_field* prev; int diffs; scalar_t__ affinity; scalar_t__ breaks; scalar_t__ flags; int buffer; } ;
struct pullup_context {struct pullup_field* head; struct pullup_field* last; struct pullup_field* first; int var; int comb; int diff; } ;
struct pullup_buffer {int dummy; } ;


 int pullup_check_field_queue (struct pullup_context*) ;
 int pullup_compute_metric (struct pullup_context*,struct pullup_field*,int,struct pullup_field*,int,int ,int ) ;
 int pullup_lock_buffer (struct pullup_buffer*,int) ;

void pullup_submit_field( struct pullup_context * c,
                          struct pullup_buffer * b,
                          int parity )
{
    struct pullup_field * f;


    pullup_check_field_queue( c );


    if( c->last && c->last->parity == parity ) return;

    f = c->head;
    f->parity = parity;
    f->buffer = pullup_lock_buffer( b, parity );
    f->flags = 0;
    f->breaks = 0;
    f->affinity = 0;

    pullup_compute_metric( c, f, parity, f->prev->prev,
                           parity, c->diff, f->diffs );
    pullup_compute_metric( c, parity?f->prev:f, 0,
                           parity?f:f->prev, 1, c->comb, f->comb );
    pullup_compute_metric( c, f, parity, f,
                           -1, c->var, f->var );


    if( !c->first ) c->first = c->head;
    c->last = c->head;
    c->head = c->head->next;
}
