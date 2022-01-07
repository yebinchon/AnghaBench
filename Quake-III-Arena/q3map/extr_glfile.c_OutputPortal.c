
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_4__ {int * winding; } ;
typedef TYPE_1__ portal_t ;
typedef int FILE ;


 int FreeWinding (int *) ;
 int OutputWinding (int *,int *) ;
 int PortalVisibleSides (TYPE_1__*) ;
 int * ReverseWinding (int *) ;
 int c_glfaces ;

void OutputPortal (portal_t *p, FILE *glview)
{
 winding_t *w;
 int sides;

 sides = PortalVisibleSides (p);
 if (!sides)
  return;

 c_glfaces++;

 w = p->winding;

 if (sides == 2)
  w = ReverseWinding (w);

 OutputWinding (w, glview);

 if (sides == 2)
  FreeWinding(w);
}
