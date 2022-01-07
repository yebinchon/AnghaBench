
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {scalar_t__ buffer; int parity; struct pullup_field* next; } ;
struct pullup_context {struct pullup_field* last; struct pullup_field* first; struct pullup_field* head; } ;


 int pullup_release_buffer (scalar_t__,int ) ;

void pullup_flush_fields( struct pullup_context * c )
{
    struct pullup_field * f;

    for( f = c->first; f && f != c->head; f = f->next )
    {
        pullup_release_buffer( f->buffer, f->parity );
        f->buffer = 0;
    }
    c->first = c->last = 0;
}
