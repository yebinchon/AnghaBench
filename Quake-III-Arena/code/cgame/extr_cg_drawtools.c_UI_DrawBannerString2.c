
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_3__ {int charsetPropB; } ;
struct TYPE_4__ {int screenXScale; int screenXBias; TYPE_1__ media; } ;


 scalar_t__ PROPB_GAP_WIDTH ;
 scalar_t__ PROPB_HEIGHT ;
 scalar_t__ PROPB_SPACE_WIDTH ;
 TYPE_2__ cgs ;
 scalar_t__** propMapB ;
 int trap_R_DrawStretchPic (float,float,float,float,float,float,float,float,int ) ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void UI_DrawBannerString2( int x, int y, const char* str, vec4_t color )
{
 const char* s;
 unsigned char ch;
 float ax;
 float ay;
 float aw;
 float ah;
 float frow;
 float fcol;
 float fwidth;
 float fheight;


 trap_R_SetColor( color );

 ax = x * cgs.screenXScale + cgs.screenXBias;
 ay = y * cgs.screenXScale;

 s = str;
 while ( *s )
 {
  ch = *s & 127;
  if ( ch == ' ' ) {
   ax += ((float)PROPB_SPACE_WIDTH + (float)PROPB_GAP_WIDTH)* cgs.screenXScale;
  }
  else if ( ch >= 'A' && ch <= 'Z' ) {
   ch -= 'A';
   fcol = (float)propMapB[ch][0] / 256.0f;
   frow = (float)propMapB[ch][1] / 256.0f;
   fwidth = (float)propMapB[ch][2] / 256.0f;
   fheight = (float)PROPB_HEIGHT / 256.0f;
   aw = (float)propMapB[ch][2] * cgs.screenXScale;
   ah = (float)PROPB_HEIGHT * cgs.screenXScale;
   trap_R_DrawStretchPic( ax, ay, aw, ah, fcol, frow, fcol+fwidth, frow+fheight, cgs.media.charsetPropB );
   ax += (aw + (float)PROPB_GAP_WIDTH * cgs.screenXScale);
  }
  s++;
 }

 trap_R_SetColor( ((void*)0) );
}
