
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* triangles; scalar_t__ volume; } ;
typedef TYPE_2__ th_tetrahedron_t ;
struct TYPE_6__ {int numtetrahedrons; TYPE_1__* triangles; TYPE_2__* tetrahedrons; } ;
struct TYPE_4__ {int front; int back; } ;


 int Error (char*) ;
 int MAX_TH_TETRAHEDRONS ;
 size_t abs (int) ;
 TYPE_3__ thworld ;

int TH_CreateTetrahedron(int triangles[4])
{
 th_tetrahedron_t *tetrahedron;
 int i;

 if (thworld.numtetrahedrons == 0) thworld.numtetrahedrons = 1;
 if (thworld.numtetrahedrons >= MAX_TH_TETRAHEDRONS)
  Error("MAX_TH_TETRAHEDRONS");
 tetrahedron = &thworld.tetrahedrons[thworld.numtetrahedrons++];
 for (i = 0; i < 4; i++)
 {
  tetrahedron->triangles[i] = triangles[i];
  if (thworld.triangles[abs(triangles[i])].front)
  {
   thworld.triangles[abs(triangles[i])].back = thworld.numtetrahedrons-1;
  }
  else
  {
   thworld.triangles[abs(triangles[i])].front = thworld.numtetrahedrons-1;
  }
 }
 tetrahedron->volume = 0;
 return thworld.numtetrahedrons-1;
}
