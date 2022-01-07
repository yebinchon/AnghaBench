
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_2__ {int time; } ;


 int FADE_TIME ;
 TYPE_1__ cg ;

float *CG_FadeColor( int startMsec, int totalMsec ) {
 static vec4_t color;
 int t;

 if ( startMsec == 0 ) {
  return ((void*)0);
 }

 t = cg.time - startMsec;

 if ( t >= totalMsec ) {
  return ((void*)0);
 }


 if ( totalMsec - t < FADE_TIME ) {
  color[3] = ( totalMsec - t ) * 1.0/FADE_TIME;
 } else {
  color[3] = 1.0;
 }
 color[0] = color[1] = color[2] = 1;

 return color;
}
