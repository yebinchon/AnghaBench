
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec4_t ;


 int CG_DrawStringExt (float,float,char const*,int*,int ,int ,int,int ,int ) ;
 int CG_DrawStrlen (char const*) ;
 int GIANT_HEIGHT ;
 int GIANT_WIDTH ;
 int qtrue ;

__attribute__((used)) static void CG_CenterGiantLine( float y, const char *string ) {
 float x;
 vec4_t color;

 color[0] = 1;
 color[1] = 1;
 color[2] = 1;
 color[3] = 1;

 x = 0.5 * ( 640 - GIANT_WIDTH * CG_DrawStrlen( string ) );

 CG_DrawStringExt( x, y, string, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
}
