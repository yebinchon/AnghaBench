
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec4_t ;


 scalar_t__ PROPB_GAP_WIDTH ;
 scalar_t__ PROPB_SPACE_WIDTH ;

 int UI_DROPSHADOW ;
 int UI_DrawBannerString2 (int,int,char const*,scalar_t__*) ;
 int UI_FORMATMASK ;


 scalar_t__** propMapB ;

void UI_DrawBannerString( int x, int y, const char* str, int style, vec4_t color ) {
 const char * s;
 int ch;
 int width;
 vec4_t drawcolor;


 s = str;
 width = 0;
 while ( *s ) {
  ch = *s;
  if ( ch == ' ' ) {
   width += PROPB_SPACE_WIDTH;
  }
  else if ( ch >= 'A' && ch <= 'Z' ) {
   width += propMapB[ch - 'A'][2] + PROPB_GAP_WIDTH;
  }
  s++;
 }
 width -= PROPB_GAP_WIDTH;

 switch( style & UI_FORMATMASK ) {
  case 130:
   x -= width / 2;
   break;

  case 128:
   x -= width;
   break;

  case 129:
  default:
   break;
 }

 if ( style & UI_DROPSHADOW ) {
  drawcolor[0] = drawcolor[1] = drawcolor[2] = 0;
  drawcolor[3] = color[3];
  UI_DrawBannerString2( x+2, y+2, str, drawcolor );
 }

 UI_DrawBannerString2( x, y, str, color );
}
