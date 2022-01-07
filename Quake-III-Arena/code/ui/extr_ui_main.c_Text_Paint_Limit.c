
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * vec4_t ;
typedef int newColor ;
struct TYPE_10__ {float top; float xSkip; int glyph; int t2; int s2; int t; int s; int imageHeight; int imageWidth; } ;
typedef TYPE_3__ glyphInfo_t ;
struct TYPE_11__ {float glyphScale; TYPE_3__* glyphs; } ;
typedef TYPE_4__ fontInfo_t ;
struct TYPE_8__ {TYPE_4__ bigFont; TYPE_4__ smallFont; TYPE_4__ textFont; } ;
struct TYPE_9__ {TYPE_1__ Assets; } ;
struct TYPE_14__ {TYPE_2__ uiDC; } ;
struct TYPE_13__ {float value; } ;
struct TYPE_12__ {float value; } ;


 size_t ColorIndex (char const) ;
 scalar_t__ Q_IsColorString (char const*) ;
 int Text_PaintChar (float,float,int ,int ,float,int ,int ,int ,int ,int ) ;
 float Text_Width (char const*,float,int) ;
 int * g_color_table ;
 int memcpy (int *,int ,int) ;
 int strlen (char const*) ;
 int trap_R_SetColor (int *) ;
 TYPE_7__ uiInfo ;
 TYPE_6__ ui_bigFont ;
 TYPE_5__ ui_smallFont ;

__attribute__((used)) static void Text_Paint_Limit(float *maxX, float x, float y, float scale, vec4_t color, const char* text, float adjust, int limit) {
  int len, count;
 vec4_t newColor;
 glyphInfo_t *glyph;
  if (text) {
    const char *s = text;
  float max = *maxX;
  float useScale;
  fontInfo_t *font = &uiInfo.uiDC.Assets.textFont;
  if (scale <= ui_smallFont.value) {
   font = &uiInfo.uiDC.Assets.smallFont;
  } else if (scale > ui_bigFont.value) {
   font = &uiInfo.uiDC.Assets.bigFont;
  }
  useScale = scale * font->glyphScale;
  trap_R_SetColor( color );
    len = strlen(text);
  if (limit > 0 && len > limit) {
   len = limit;
  }
  count = 0;
  while (s && *s && count < len) {
   glyph = &font->glyphs[(int)*s];
   if ( Q_IsColorString( s ) ) {
    memcpy( newColor, g_color_table[ColorIndex(*(s+1))], sizeof( newColor ) );
    newColor[3] = color[3];
    trap_R_SetColor( newColor );
    s += 2;
    continue;
   } else {
       float yadj = useScale * glyph->top;
    if (Text_Width(s, useScale, 1) + x > max) {
     *maxX = 0;
     break;
    }
      Text_PaintChar(x, y - yadj,
                    glyph->imageWidth,
                   glyph->imageHeight,
                   useScale,
                 glyph->s,
               glyph->t,
               glyph->s2,
              glyph->t2,
             glyph->glyph);
       x += (glyph->xSkip * useScale) + adjust;
    *maxX = x;
    count++;
    s++;
     }
  }
   trap_R_SetColor( ((void*)0) );
  }

}
