
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_6__ {int time; } ;
struct TYPE_4__ {int charsetProp; int charsetPropGlow; } ;
struct TYPE_5__ {TYPE_1__ media; } ;


 int PULSE_DIVISOR ;

 int UI_DROPSHADOW ;
 int UI_DrawProportionalString2 (int,int,char const*,double*,float,int ) ;
 int UI_FORMATMASK ;
 int UI_INVERSE ;

 int UI_PULSE ;
 float UI_ProportionalSizeScale (int) ;
 float UI_ProportionalStringWidth (char const*) ;

 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 double sin (int) ;

void UI_DrawProportionalString( int x, int y, const char* str, int style, vec4_t color ) {
 vec4_t drawcolor;
 int width;
 float sizeScale;

 sizeScale = UI_ProportionalSizeScale( style );

 switch( style & UI_FORMATMASK ) {
  case 130:
   width = UI_ProportionalStringWidth( str ) * sizeScale;
   x -= width / 2;
   break;

  case 128:
   width = UI_ProportionalStringWidth( str ) * sizeScale;
   x -= width;
   break;

  case 129:
  default:
   break;
 }

 if ( style & UI_DROPSHADOW ) {
  drawcolor[0] = drawcolor[1] = drawcolor[2] = 0;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x+2, y+2, str, drawcolor, sizeScale, cgs.media.charsetProp );
 }

 if ( style & UI_INVERSE ) {
  drawcolor[0] = color[0] * 0.8;
  drawcolor[1] = color[1] * 0.8;
  drawcolor[2] = color[2] * 0.8;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x, y, str, drawcolor, sizeScale, cgs.media.charsetProp );
  return;
 }

 if ( style & UI_PULSE ) {
  drawcolor[0] = color[0] * 0.8;
  drawcolor[1] = color[1] * 0.8;
  drawcolor[2] = color[2] * 0.8;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x, y, str, color, sizeScale, cgs.media.charsetProp );

  drawcolor[0] = color[0];
  drawcolor[1] = color[1];
  drawcolor[2] = color[2];
  drawcolor[3] = 0.5 + 0.5 * sin( cg.time / PULSE_DIVISOR );
  UI_DrawProportionalString2( x, y, str, drawcolor, sizeScale, cgs.media.charsetPropGlow );
  return;
 }

 UI_DrawProportionalString2( x, y, str, color, sizeScale, cgs.media.charsetProp );
}
