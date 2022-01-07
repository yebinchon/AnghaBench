
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CrossProduct (float*,int ,float*) ;
 float DotProduct (int ,float*) ;
 int VectorNormalize (float*,float*) ;
 int VectorSubtract (int ,int ,int ) ;

void GenerateBoundaryForPoints( float boundary[4], float plane[4], vec3_t a, vec3_t b ) {
 vec3_t d1;


 VectorSubtract( b, a, d1 );
 CrossProduct( plane, d1, boundary );
 VectorNormalize( boundary, boundary );
 boundary[3] = DotProduct( a, boundary );
}
