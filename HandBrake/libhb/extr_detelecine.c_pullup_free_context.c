
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {struct pullup_field* frame; struct pullup_field* comb; struct pullup_field* diffs; struct pullup_field* prev; struct pullup_field* next; struct pullup_field* head; struct pullup_field* buffers; } ;
struct pullup_context {struct pullup_context* frame; struct pullup_context* comb; struct pullup_context* diffs; struct pullup_context* prev; struct pullup_context* next; struct pullup_context* head; struct pullup_context* buffers; } ;


 int free (struct pullup_field*) ;

void pullup_free_context( struct pullup_context * c )
{
    struct pullup_field * f;

    free( c->buffers );

    f = c->head->next;
    while( f != c->head )
    {
        free( f->diffs );
        free( f->comb );
        f = f->next;
        free( f->prev );
    }
    free( f->diffs );
    free( f->comb );
    free(f);

    free( c->frame );
    free( c );
}
