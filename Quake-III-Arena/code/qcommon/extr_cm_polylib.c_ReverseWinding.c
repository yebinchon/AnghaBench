
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;


 TYPE_1__* AllocWinding (int) ;
 int VectorCopy (int ,int ) ;

winding_t *ReverseWinding (winding_t *w)
{
 int i;
 winding_t *c;

 c = AllocWinding (w->numpoints);
 for (i=0 ; i<w->numpoints ; i++)
 {
  VectorCopy (w->p[w->numpoints-1-i], c->p[i]);
 }
 c->numpoints = w->numpoints;
 return c;
}
