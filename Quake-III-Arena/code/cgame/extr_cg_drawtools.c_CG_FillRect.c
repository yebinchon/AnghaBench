
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int whiteShader; } ;
struct TYPE_4__ {TYPE_1__ media; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_2__ cgs ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int ,int ,int ) ;
 int trap_R_SetColor (float const*) ;

void CG_FillRect( float x, float y, float width, float height, const float *color ) {
 trap_R_SetColor( color );

 CG_AdjustFrom640( &x, &y, &width, &height );
 trap_R_DrawStretchPic( x, y, width, height, 0, 0, 0, 0, cgs.media.whiteShader );

 trap_R_SetColor( ((void*)0) );
}
