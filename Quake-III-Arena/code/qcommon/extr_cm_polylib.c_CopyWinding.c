
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t numpoints; scalar_t__* p; } ;
typedef TYPE_1__ winding_t ;


 TYPE_1__* AllocWinding (size_t) ;
 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;

winding_t *CopyWinding (winding_t *w)
{
 int size;
 winding_t *c;

 c = AllocWinding (w->numpoints);
 size = (int)((winding_t *)0)->p[w->numpoints];
 Com_Memcpy (c, w, size);
 return c;
}
