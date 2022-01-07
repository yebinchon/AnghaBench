
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hier_chset; } ;
struct TYPE_7__ {size_t nchsets; TYPE_2__* chset; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAXllChSet ;


 scalar_t__ is_hier_dmix_chset (TYPE_2__*) ;

__attribute__((used)) static DCAXllChSet *find_next_hier_dmix_chset(DCAXllDecoder *s, DCAXllChSet *c)
{
    if (c->hier_chset)
        while (++c < &s->chset[s->nchsets])
            if (is_hier_dmix_chset(c))
                return c;

    return ((void*)0);
}
