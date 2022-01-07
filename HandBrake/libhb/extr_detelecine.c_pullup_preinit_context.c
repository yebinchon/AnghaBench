
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_context {int nplanes; void* background; void* stride; void* h; void* w; void* bpp; } ;


 void* calloc (int ,int) ;

void pullup_preinit_context( struct pullup_context * c )
{
    c->bpp = calloc( c->nplanes, sizeof(int) );
    c->w = calloc( c->nplanes, sizeof(int) );
    c->h = calloc( c->nplanes, sizeof(int) );
    c->stride = calloc( c->nplanes, sizeof(int) );
    c->background = calloc( c->nplanes, sizeof(int) );
}
