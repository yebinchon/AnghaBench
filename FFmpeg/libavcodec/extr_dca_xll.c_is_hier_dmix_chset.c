
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hier_chset; scalar_t__ dmix_embedded; int primary_chset; } ;
typedef TYPE_1__ DCAXllChSet ;



__attribute__((used)) static int is_hier_dmix_chset(DCAXllChSet *c)
{
    return !c->primary_chset && c->dmix_embedded && c->hier_chset;
}
