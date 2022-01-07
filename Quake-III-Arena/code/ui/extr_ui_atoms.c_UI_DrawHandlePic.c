
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;


 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_R_DrawStretchPic (float,float,float,float,float,float,float,float,int ) ;

void UI_DrawHandlePic( float x, float y, float w, float h, qhandle_t hShader ) {
 float s0;
 float s1;
 float t0;
 float t1;

 if( w < 0 ) {
  w = -w;
  s0 = 1;
  s1 = 0;
 }
 else {
  s0 = 0;
  s1 = 1;
 }

 if( h < 0 ) {
  h = -h;
  t0 = 1;
  t1 = 0;
 }
 else {
  t0 = 0;
  t1 = 1;
 }

 UI_AdjustFrom640( &x, &y, &w, &h );
 trap_R_DrawStretchPic( x, y, w, h, s0, t0, s1, t1, hShader );
}
