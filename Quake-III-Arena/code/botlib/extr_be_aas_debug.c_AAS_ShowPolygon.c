
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {scalar_t__ (* DebugPolygonCreate ) (int,int,int *) ;} ;


 int MAX_DEBUGPOLYGONS ;
 TYPE_1__ botimport ;
 scalar_t__* debugpolygons ;
 scalar_t__ stub1 (int,int,int *) ;

void AAS_ShowPolygon(int color, int numpoints, vec3_t *points)
{
 int i;

 for (i = 0; i < MAX_DEBUGPOLYGONS; i++)
 {
  if (!debugpolygons[i])
  {
   debugpolygons[i] = botimport.DebugPolygonCreate(color, numpoints, points);
   break;
  }
 }
}
