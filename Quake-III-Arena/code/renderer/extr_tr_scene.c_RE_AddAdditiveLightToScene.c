
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int RE_AddDynamicLightToScene (int const,float,float,float,float,int ) ;
 int qtrue ;

void RE_AddAdditiveLightToScene( const vec3_t org, float intensity, float r, float g, float b ) {
 RE_AddDynamicLightToScene( org, intensity, r, g, b, qtrue );
}
