
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dist; int normal; } ;


 int FindFloatPlane (int ,int ) ;
 TYPE_1__* dplanes ;
 int * dplanes2mapplanes ;
 int numplanes ;

void DPlanes2MapPlanes(void)
{
 int i;

 for (i = 0; i < numplanes; i++)
 {
  dplanes2mapplanes[i] = FindFloatPlane(dplanes[i].normal, dplanes[i].dist);
 }
}
