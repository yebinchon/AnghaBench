
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int DotProduct (int *,int *) ;
 int VectorCopy (int *,int *) ;

void G_RotatePoint(vec3_t point, vec3_t matrix[3]) {
 vec3_t tvec;

 VectorCopy(point, tvec);
 point[0] = DotProduct(matrix[0], tvec);
 point[1] = DotProduct(matrix[1], tvec);
 point[2] = DotProduct(matrix[2], tvec);
}
