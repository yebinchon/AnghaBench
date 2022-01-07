
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int DotProduct (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;

void AAS_ProjectPointOntoVector( vec3_t point, vec3_t vStart, vec3_t vEnd, vec3_t vProj )
{
 vec3_t pVec, vec;

 VectorSubtract( point, vStart, pVec );
 VectorSubtract( vEnd, vStart, vec );
 VectorNormalize( vec );

 VectorMA( vStart, DotProduct( pVec, vec ), vec, vProj );
}
