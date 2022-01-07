
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_13__ {int h; int w; scalar_t__ y; int x; } ;
typedef TYPE_3__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_14__ {size_t clientNum; } ;
typedef TYPE_4__ playerState_t ;
typedef int centity_t ;
struct TYPE_19__ {int time; TYPE_1__* snap; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_12__ {int armorModel; int armorIcon; } ;
struct TYPE_15__ {TYPE_2__ media; } ;
struct TYPE_11__ {TYPE_4__ ps; } ;


 int CG_Draw3DModel (int ,scalar_t__,int ,int,int ,int ,int*,int*) ;
 int CG_DrawPic (int ,scalar_t__,int ,int,int ) ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_9__ cg ;
 TYPE_8__ cg_draw3dIcons ;
 TYPE_7__ cg_drawIcons ;
 TYPE_6__ cg_drawStatus ;
 int * cg_entities ;
 TYPE_5__ cgs ;

__attribute__((used)) static void CG_DrawPlayerArmorIcon( rectDef_t *rect, qboolean draw2D ) {
 centity_t *cent;
 playerState_t *ps;
 vec3_t angles;
 vec3_t origin;

  if ( cg_drawStatus.integer == 0 ) {
  return;
 }

 cent = &cg_entities[cg.snap->ps.clientNum];
 ps = &cg.snap->ps;

 if ( draw2D || ( !cg_draw3dIcons.integer && cg_drawIcons.integer) ) {
  CG_DrawPic( rect->x, rect->y + rect->h/2 + 1, rect->w, rect->h, cgs.media.armorIcon );
  } else if (cg_draw3dIcons.integer) {
   VectorClear( angles );
    origin[0] = 90;
   origin[1] = 0;
   origin[2] = -10;
   angles[YAW] = ( cg.time & 2047 ) * 360 / 2048.0;

    CG_Draw3DModel( rect->x, rect->y, rect->w, rect->h, cgs.media.armorModel, 0, origin, angles );
  }

}
