
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_R_ADDADDITIVELIGHTTOSCENE ;
 int PASSFLOAT (float) ;
 int syscall (int ,int const,int ,int ,int ,int ) ;

void trap_R_AddAdditiveLightToScene( const vec3_t org, float intensity, float r, float g, float b ) {
 syscall( CG_R_ADDADDITIVELIGHTTOSCENE, org, PASSFLOAT(intensity), PASSFLOAT(r), PASSFLOAT(g), PASSFLOAT(b) );
}
