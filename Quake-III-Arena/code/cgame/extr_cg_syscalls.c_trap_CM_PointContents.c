
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int clipHandle_t ;


 int CG_CM_POINTCONTENTS ;
 int syscall (int ,int const,int ) ;

int trap_CM_PointContents( const vec3_t p, clipHandle_t model ) {
 return syscall( CG_CM_POINTCONTENTS, p, model );
}
