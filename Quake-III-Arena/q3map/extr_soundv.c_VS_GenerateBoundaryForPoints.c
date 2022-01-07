
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int normal; int dist; } ;
typedef TYPE_1__ plane_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void VS_GenerateBoundaryForPoints( plane_t *boundary, plane_t *plane, vec3_t a, vec3_t b ) {
 vec3_t d1;


 VectorSubtract( a, b, d1 );
 CrossProduct( plane->normal, d1, boundary->normal );
 VectorNormalize( boundary->normal, boundary->normal );
 boundary->dist = DotProduct( a, boundary->normal );
}
