
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 int VectorMA (int*,float,int*,int*) ;
 int VectorNormalize (int*) ;
 float sqrt (float) ;

int RaySphereIntersections( vec3_t origin, float radius, vec3_t point, vec3_t dir, vec3_t intersections[2] ) {
 float b, c, d, t;







 VectorNormalize(dir);
 b = 2 * (dir[0] * (point[0] - origin[0]) + dir[1] * (point[1] - origin[1]) + dir[2] * (point[2] - origin[2]));
 c = (point[0] - origin[0]) * (point[0] - origin[0]) +
  (point[1] - origin[1]) * (point[1] - origin[1]) +
  (point[2] - origin[2]) * (point[2] - origin[2]) -
  radius * radius;

 d = b * b - 4 * c;
 if (d > 0) {
  t = (- b + sqrt(d)) / 2;
  VectorMA(point, t, dir, intersections[0]);
  t = (- b - sqrt(d)) / 2;
  VectorMA(point, t, dir, intersections[1]);
  return 2;
 }
 else if (d == 0) {
  t = (- b ) / 2;
  VectorMA(point, t, dir, intersections[0]);
  return 1;
 }
 return 0;
}
