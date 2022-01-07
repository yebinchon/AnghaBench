
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int clipHandle_t ;


 int CG_CM_TRANSFORMEDPOINTCONTENTS ;
 int syscall (int ,int const,int ,int const,int const) ;

int trap_CM_TransformedPointContents( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles ) {
 return syscall( CG_CM_TRANSFORMEDPOINTCONTENTS, p, model, origin, angles );
}
