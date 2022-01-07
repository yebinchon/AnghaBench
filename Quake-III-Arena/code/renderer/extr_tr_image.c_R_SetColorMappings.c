
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int colorBits; scalar_t__ deviceSupportsGamma; int isFullscreen; } ;
struct TYPE_11__ {float value; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int (* Cvar_Set ) (char*,char*) ;} ;
struct TYPE_7__ {int overbrightBits; float identityLight; int identityLightByte; } ;


 int GLimp_SetGamma (int*,int*,int*) ;
 TYPE_6__ glConfig ;
 int pow (int,float) ;
 TYPE_5__* r_gamma ;
 TYPE_4__* r_intensity ;
 TYPE_3__* r_overBrightBits ;
 TYPE_2__ ri ;
 int* s_gammatable ;
 int* s_intensitytable ;
 int stub1 (char*,char*) ;
 int stub2 (char*,char*) ;
 int stub3 (char*,char*) ;
 TYPE_1__ tr ;

void R_SetColorMappings( void ) {
 int i, j;
 float g;
 int inf;
 int shift;


 tr.overbrightBits = r_overBrightBits->integer;
 if ( !glConfig.deviceSupportsGamma ) {
  tr.overbrightBits = 0;
 }


 if ( !glConfig.isFullscreen )
 {
  tr.overbrightBits = 0;
 }


 if ( glConfig.colorBits > 16 ) {
  if ( tr.overbrightBits > 2 ) {
   tr.overbrightBits = 2;
  }
 } else {
  if ( tr.overbrightBits > 1 ) {
   tr.overbrightBits = 1;
  }
 }
 if ( tr.overbrightBits < 0 ) {
  tr.overbrightBits = 0;
 }

 tr.identityLight = 1.0f / ( 1 << tr.overbrightBits );
 tr.identityLightByte = 255 * tr.identityLight;


 if ( r_intensity->value <= 1 ) {
  ri.Cvar_Set( "r_intensity", "1" );
 }

 if ( r_gamma->value < 0.5f ) {
  ri.Cvar_Set( "r_gamma", "0.5" );
 } else if ( r_gamma->value > 3.0f ) {
  ri.Cvar_Set( "r_gamma", "3.0" );
 }

 g = r_gamma->value;

 shift = tr.overbrightBits;

 for ( i = 0; i < 256; i++ ) {
  if ( g == 1 ) {
   inf = i;
  } else {
   inf = 255 * pow ( i/255.0f, 1.0f / g ) + 0.5f;
  }
  inf <<= shift;
  if (inf < 0) {
   inf = 0;
  }
  if (inf > 255) {
   inf = 255;
  }
  s_gammatable[i] = inf;
 }

 for (i=0 ; i<256 ; i++) {
  j = i * r_intensity->value;
  if (j > 255) {
   j = 255;
  }
  s_intensitytable[i] = j;
 }

 if ( glConfig.deviceSupportsGamma )
 {
  GLimp_SetGamma( s_gammatable, s_gammatable, s_gammatable );
 }
}
