
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int BIGCHAR_WIDTH ;
 int SCR_DrawStringExt (int,int,int ,char const*,int ,int ) ;
 int qtrue ;

void SCR_DrawBigStringColor( int x, int y, const char *s, vec4_t color ) {
 SCR_DrawStringExt( x, y, BIGCHAR_WIDTH, s, color, qtrue );
}
