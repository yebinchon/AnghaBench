
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int ITEM_TEXTSTYLE_SHADOWEDMORE ;
 int Text_Paint (float,float,float,int ,char const*,int ,int ,int ) ;
 int Text_Width (char const*,float,int ) ;

void Text_PaintCenter(float x, float y, float scale, vec4_t color, const char *text, float adjust) {
 int len = Text_Width(text, scale, 0);
 Text_Paint(x - len / 2, y, scale, color, text, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
}
