
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_9__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
typedef int clipHandle_t ;
struct TYPE_10__ {scalar_t__ deferred; int modelIcon; int headSkin; int headModel; int headOffset; } ;
typedef TYPE_3__ clientInfo_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_8__ {int deferShader; } ;
struct TYPE_11__ {int currentVoiceClient; TYPE_1__ media; TYPE_3__* clientinfo; } ;


 int CG_Draw3DModel (int ,int ,int ,int ,int ,int ,double*,double*) ;
 int CG_DrawPic (int ,int ,int ,int ,int ) ;
 size_t CG_GetSelectedPlayer () ;
 size_t PITCH ;
 size_t ROLL ;
 int VectorAdd (double*,int ,double*) ;
 size_t YAW ;
 TYPE_6__ cg_draw3dIcons ;
 TYPE_5__ cg_drawIcons ;
 TYPE_4__ cgs ;
 int* sortedTeamPlayers ;
 int trap_R_ModelBounds (int ,double*,double*) ;

__attribute__((used)) static void CG_DrawSelectedPlayerHead( rectDef_t *rect, qboolean draw2D, qboolean voice ) {
 clipHandle_t cm;
 clientInfo_t *ci;
 float len;
 vec3_t origin;
 vec3_t mins, maxs, angles;


  ci = cgs.clientinfo + ((voice) ? cgs.currentVoiceClient : sortedTeamPlayers[CG_GetSelectedPlayer()]);

  if (ci) {
   if ( cg_draw3dIcons.integer ) {
    cm = ci->headModel;
    if ( !cm ) {
     return;
    }


    trap_R_ModelBounds( cm, mins, maxs );

    origin[2] = -0.5 * ( mins[2] + maxs[2] );
    origin[1] = 0.5 * ( mins[1] + maxs[1] );



    len = 0.7 * ( maxs[2] - mins[2] );
    origin[0] = len / 0.268;


    VectorAdd( origin, ci->headOffset, origin );

     angles[PITCH] = 0;
     angles[YAW] = 180;
     angles[ROLL] = 0;

      CG_Draw3DModel( rect->x, rect->y, rect->w, rect->h, ci->headModel, ci->headSkin, origin, angles );
   } else if ( cg_drawIcons.integer ) {
    CG_DrawPic( rect->x, rect->y, rect->w, rect->h, ci->modelIcon );
   }


   if ( ci->deferred ) {
    CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.deferShader );
   }
  }

}
