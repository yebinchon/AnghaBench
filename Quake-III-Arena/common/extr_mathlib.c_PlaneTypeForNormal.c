
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;


 int PLANE_NON_AXIAL ;
 int PLANE_X ;
 int PLANE_Y ;
 int PLANE_Z ;

int PlaneTypeForNormal (vec3_t normal) {
 if (normal[0] == 1.0 || normal[0] == -1.0)
  return PLANE_X;
 if (normal[1] == 1.0 || normal[1] == -1.0)
  return PLANE_Y;
 if (normal[2] == 1.0 || normal[2] == -1.0)
  return PLANE_Z;

 return PLANE_NON_AXIAL;
}
