
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * points; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;
struct TYPE_6__ {int normal; int dist; } ;
typedef TYPE_2__ plane_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void VS_PlaneFromWinding (winding_t *w, plane_t *plane)
{
 vec3_t v1, v2;


 VectorSubtract (w->points[2], w->points[1], v1);
 VectorSubtract (w->points[0], w->points[1], v2);
 CrossProduct (v2, v1, plane->normal);
 VectorNormalize (plane->normal, plane->normal);
 plane->dist = DotProduct (w->points[0], plane->normal);
}
