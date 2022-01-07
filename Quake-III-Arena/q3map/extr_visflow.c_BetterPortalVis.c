
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nummightsee; int portalvis; int portalflood; int leaf; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;


 scalar_t__ CountBits (int ,int) ;
 int RecursiveLeafBitFlow (int ,int ,int ) ;
 int c_vis ;
 int numportals ;
 TYPE_1__* portals ;

void BetterPortalVis (int portalnum)
{
 vportal_t *p;

 p = portals+portalnum;

 if (p->removed)
  return;

 RecursiveLeafBitFlow (p->leaf, p->portalflood, p->portalvis);


 p->nummightsee = CountBits (p->portalvis, numportals*2);
 c_vis += p->nummightsee;
}
