
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (float*,float*,int ) ;

int TH_Colinear(float *v0, float *v1, float *v2)
{
 vec3_t t1, t2, vcross;
 float d;

 VectorSubtract(v1, v0, t1);
 VectorSubtract(v2, v0, t2);
 CrossProduct (t1, t2, vcross);
 d = VectorLength( vcross );


 if (d < 10)
 {
  return 1;
 }
 return 0;
}
