
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** nodes; int onnode; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_4__ {int opaque; } ;



int PortalVisibleSides (portal_t *p)
{
 int fcon, bcon;

 if (!p->onnode)
  return 0;

 fcon = p->nodes[0]->opaque;
 bcon = p->nodes[1]->opaque;


 if (fcon == bcon)
  return 0;

 if (!fcon)
  return 1;
 if (!bcon)
  return 2;
 return 0;
}
