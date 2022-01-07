
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int CrossProduct (int *,int *,int *) ;
 float DotProduct (int *,int *) ;
 int VectorMA (int *,float,int *,int *) ;
 int VectorNormalize (int *,int *) ;

void MakeNormalVectors (vec3_t forward, vec3_t right, vec3_t up)
{
 float d;



 right[1] = -forward[0];
 right[2] = forward[1];
 right[0] = forward[2];

 d = DotProduct (right, forward);
 VectorMA (right, -d, forward, right);
 VectorNormalize (right, right);
 CrossProduct (right, forward, up);
}
