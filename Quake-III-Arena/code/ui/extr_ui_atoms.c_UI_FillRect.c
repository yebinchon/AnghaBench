
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int whiteShader; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int ,int ,int ) ;
 int trap_R_SetColor (float const*) ;
 TYPE_2__ uiInfo ;

void UI_FillRect( float x, float y, float width, float height, const float *color ) {
 trap_R_SetColor( color );

 UI_AdjustFrom640( &x, &y, &width, &height );
 trap_R_DrawStretchPic( x, y, width, height, 0, 0, 0, 0, uiInfo.uiDC.whiteShader );

 trap_R_SetColor( ((void*)0) );
}
