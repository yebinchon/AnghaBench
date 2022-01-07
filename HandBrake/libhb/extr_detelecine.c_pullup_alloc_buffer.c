
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_context {int nplanes; int* h; int* stride; int * background; } ;
struct pullup_buffer {int* size; int * planes; } ;


 void* calloc (int,int) ;
 int malloc (int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void pullup_alloc_buffer( struct pullup_context * c,
                                 struct pullup_buffer * b )
{
    int i;
    if( b->planes ) return;
    b->planes = calloc( c->nplanes, sizeof(unsigned char *) );
    b->size = calloc( c->nplanes, sizeof(int) );
    for ( i = 0; i < c->nplanes; i++ )
    {
        b->size[i] = c->h[i] * c->stride[i];
        b->planes[i] = malloc(b->size[i]);

        memset( b->planes[i], c->background[i], b->size[i] );
    }
}
