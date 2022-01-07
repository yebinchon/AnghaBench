
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int DotProduct (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void CM_ProjectPointOntoVector( vec3_t point, vec3_t vStart, vec3_t vDir, vec3_t vProj )
{
 vec3_t pVec;

 VectorSubtract( point, vStart, pVec );

 VectorMA( vStart, DotProduct( pVec, vDir ), vDir, vProj );
}
