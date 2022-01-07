
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * edges; } ;
typedef TYPE_1__ th_triangle_t ;


 int TH_RemoveEdgeUser (int ) ;
 int abs (int ) ;

void TH_FreeTriangleEdges(th_triangle_t *tri)
{
 int i;

 for (i = 0; i < 3; i++)
 {
  TH_RemoveEdgeUser(abs(tri->edges[i]));
 }
}
