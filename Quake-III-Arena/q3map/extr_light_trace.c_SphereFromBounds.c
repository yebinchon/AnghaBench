
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorAdd (int ,int ,int ) ;
 float VectorLength (int ) ;
 int VectorScale (int ,double,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void SphereFromBounds( vec3_t mins, vec3_t maxs, vec3_t origin, float *radius ) {
 vec3_t temp;

 VectorAdd( mins, maxs, origin );
 VectorScale( origin, 0.5, origin );
 VectorSubtract( maxs, origin, temp );
 *radius = VectorLength( temp );
}
