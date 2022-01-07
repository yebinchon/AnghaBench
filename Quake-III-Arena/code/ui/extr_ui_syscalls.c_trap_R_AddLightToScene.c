
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int PASSFLOAT (float) ;
 int UI_R_ADDLIGHTTOSCENE ;
 int syscall (int ,int const,int ,int ,int ,int ) ;

void trap_R_AddLightToScene( const vec3_t org, float intensity, float r, float g, float b ) {
 syscall( UI_R_ADDLIGHTTOSCENE, org, PASSFLOAT(intensity), PASSFLOAT(r), PASSFLOAT(g), PASSFLOAT(b) );
}
