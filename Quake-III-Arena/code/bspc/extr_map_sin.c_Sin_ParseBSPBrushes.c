
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ modelnum; } ;
typedef TYPE_1__ entity_t ;


 int Sin_BSPBrushToMapBrush (int *,TYPE_1__*) ;
 int Sin_SetBrushModelNumbers (TYPE_1__*) ;
 scalar_t__* brushmodelnumbers ;
 int * sin_dbrushes ;
 int sin_numbrushes ;

void Sin_ParseBSPBrushes(entity_t *mapent)
{
 int i, testnum = 0;



 Sin_SetBrushModelNumbers(mapent);

 for (i = 0; i < sin_numbrushes; i++)
 {
  if (brushmodelnumbers[i] == mapent->modelnum)
  {
   testnum++;
   Sin_BSPBrushToMapBrush(&sin_dbrushes[i], mapent);
  }
 }
}
