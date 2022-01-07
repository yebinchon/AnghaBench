
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {struct pullup_field* prev; struct pullup_field* next; } ;
struct pullup_context {int dummy; } ;


 void* calloc (int,int) ;
 int pullup_alloc_metrics (struct pullup_context*,struct pullup_field*) ;

__attribute__((used)) static struct pullup_field * pullup_make_field_queue( struct pullup_context * c,
                                                      int len )
{
    struct pullup_field * head, * f;
    f = head = calloc( 1, sizeof(struct pullup_field) );
    pullup_alloc_metrics( c, f );
    for ( ; len > 0; len-- )
    {
        f->next = calloc( 1, sizeof(struct pullup_field) );
        f->next->prev = f;
        f = f->next;
        pullup_alloc_metrics( c, f );
    }
    f->next = head;
    head->prev = f;
    return head;
}
