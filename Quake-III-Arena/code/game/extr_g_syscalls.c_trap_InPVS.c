
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 int G_IN_PVS ;
 int syscall (int ,int const,int const) ;

qboolean trap_InPVS( const vec3_t p1, const vec3_t p2 ) {
 return syscall( G_IN_PVS, p1, p2 );
}
