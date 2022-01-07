
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef int vec3_t ;


 scalar_t__ DIST_EPSILON ;
 scalar_t__ Q_rint (scalar_t__) ;
 int SnapVector (int ) ;
 scalar_t__ fabs (scalar_t__) ;

void SnapPlane (vec3_t normal, vec_t *dist)
{
 SnapVector (normal);

 if (fabs(*dist-Q_rint(*dist)) < DIST_EPSILON)
  *dist = Q_rint(*dist);
}
