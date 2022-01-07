
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIGCHAR_WIDTH ;
 int SCR_DrawStringExt (int,int,int ,char const*,float*,int ) ;
 int qfalse ;

void SCR_DrawBigString( int x, int y, const char *s, float alpha ) {
 float color[4];

 color[0] = color[1] = color[2] = 1.0;
 color[3] = alpha;
 SCR_DrawStringExt( x, y, BIGCHAR_WIDTH, s, color, qfalse );
}
