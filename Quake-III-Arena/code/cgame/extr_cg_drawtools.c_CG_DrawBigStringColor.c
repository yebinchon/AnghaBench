
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawStringExt (int,int,char const*,int ,int ,int ,int ,int ,int ) ;
 int qtrue ;

void CG_DrawBigStringColor( int x, int y, const char *s, vec4_t color ) {
 CG_DrawStringExt( x, y, s, color, qtrue, qtrue, BIGCHAR_WIDTH, BIGCHAR_HEIGHT, 0 );
}
