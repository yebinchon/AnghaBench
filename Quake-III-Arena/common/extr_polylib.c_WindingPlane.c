
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void WindingPlane (winding_t *w, vec3_t normal, vec_t *dist)
{
 vec3_t v1, v2;

 VectorSubtract (w->p[1], w->p[0], v1);
 VectorSubtract (w->p[2], w->p[0], v2);
 CrossProduct (v2, v1, normal);
 VectorNormalize (normal, normal);
 *dist = DotProduct (w->p[0], normal);

}
