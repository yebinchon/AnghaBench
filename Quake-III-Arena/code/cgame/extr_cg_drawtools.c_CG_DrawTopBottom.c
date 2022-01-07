
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int whiteShader; } ;
struct TYPE_4__ {float screenYScale; TYPE_1__ media; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_2__ cgs ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int ,int ,int ) ;

void CG_DrawTopBottom(float x, float y, float w, float h, float size) {
 CG_AdjustFrom640( &x, &y, &w, &h );
 size *= cgs.screenYScale;
 trap_R_DrawStretchPic( x, y, w, size, 0, 0, 0, 0, cgs.media.whiteShader );
 trap_R_DrawStretchPic( x, y + h - size, w, size, 0, 0, 0, 0, cgs.media.whiteShader );
}
