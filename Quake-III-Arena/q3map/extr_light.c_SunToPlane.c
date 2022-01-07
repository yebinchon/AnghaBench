
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int traceWork_t ;


 float DotProduct (int const,int ) ;
 int SunToPoint (int const,int *,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int numSkyBrushes ;
 int sunDirection ;

void SunToPlane( const vec3_t origin, const vec3_t normal, vec3_t color, traceWork_t *tw ) {
 float angle;
 vec3_t sunColor;

 if ( !numSkyBrushes ) {
  return;
 }

 angle = DotProduct( normal, sunDirection );
 if ( angle <= 0 ) {
  return;
 }

 SunToPoint( origin, tw, sunColor );
 VectorMA( color, angle, sunColor, color );
}
