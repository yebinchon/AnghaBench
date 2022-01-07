
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* points; } ;
typedef TYPE_1__ winding_t ;


 int Error (char*,int) ;
 int MAX_POINTS_ON_WINDING ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

winding_t *VL_AllocWinding (int points)
{
 winding_t *w;
 int size;

 if (points > MAX_POINTS_ON_WINDING)
  Error ("NewWinding: %i points", points);

 size = (int)((winding_t *)0)->points[points];
 w = malloc (size);
 memset (w, 0, size);

 return w;
}
