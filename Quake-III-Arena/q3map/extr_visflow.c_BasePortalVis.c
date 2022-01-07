
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numpoints; int * points; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_6__ {float dist; int normal; } ;
struct TYPE_8__ {int* portalfront; int* portalflood; int* portalvis; scalar_t__ nummightsee; int leaf; TYPE_1__ plane; TYPE_2__* winding; scalar_t__ removed; } ;
typedef TYPE_3__ vportal_t ;


 scalar_t__ CountBits (int*,int) ;
 float DotProduct (int ,int ) ;
 float ON_EPSILON ;
 int SimpleFlood (TYPE_3__*,int ) ;
 int c_flood ;
 void* malloc (int ) ;
 int memset (int*,int ,int ) ;
 int numportals ;
 int portalbytes ;
 TYPE_3__* portals ;

void BasePortalVis (int portalnum)
{
 int j, k;
 vportal_t *tp, *p;
 float d;
 winding_t *w;

 p = portals+portalnum;

 if (p->removed)
  return;

 p->portalfront = malloc (portalbytes);
 memset (p->portalfront, 0, portalbytes);

 p->portalflood = malloc (portalbytes);
 memset (p->portalflood, 0, portalbytes);

 p->portalvis = malloc (portalbytes);
 memset (p->portalvis, 0, portalbytes);

 for (j=0, tp = portals ; j<numportals*2 ; j++, tp++)
 {
  if (j == portalnum)
   continue;
  if (tp->removed)
   continue;
  w = tp->winding;
  for (k=0 ; k<w->numpoints ; k++)
  {
   d = DotProduct (w->points[k], p->plane.normal)
    - p->plane.dist;
   if (d > ON_EPSILON)
    break;
  }
  if (k == w->numpoints)
   continue;

  w = p->winding;
  for (k=0 ; k<w->numpoints ; k++)
  {
   d = DotProduct (w->points[k], tp->plane.normal)
    - tp->plane.dist;
   if (d < -ON_EPSILON)
    break;
  }
  if (k == w->numpoints)
   continue;

  p->portalfront[j>>3] |= (1<<(j&7));
 }

 SimpleFlood (p, p->leaf);

 p->nummightsee = CountBits (p->portalflood, numportals*2);

 c_flood += p->nummightsee;
}
