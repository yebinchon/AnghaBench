
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
typedef int qhandle_t ;
typedef int qboolean ;
typedef int gitem_t ;
struct TYPE_12__ {double time; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int icon; } ;
struct TYPE_7__ {int neutralFlagModel; int blueFlagModel; int redFlagModel; } ;
struct TYPE_8__ {TYPE_1__ media; } ;


 int * BG_FindItemForPowerup (int ) ;
 int CG_Draw3DModel (float,float,float,float,int ,int ,double*,double*) ;
 int CG_DrawPic (float,float,float,float,int ) ;
 size_t ITEM_INDEX (int *) ;
 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int VectorClear (double*) ;
 size_t YAW ;
 TYPE_6__ cg ;
 TYPE_5__ cg_draw3dIcons ;
 TYPE_4__ cg_drawIcons ;
 TYPE_3__* cg_items ;
 TYPE_2__ cgs ;
 int sin (double) ;
 int trap_R_ModelBounds (int ,double*,double*) ;

void CG_DrawFlagModel( float x, float y, float w, float h, int team, qboolean force2D ) {
 qhandle_t cm;
 float len;
 vec3_t origin, angles;
 vec3_t mins, maxs;
 qhandle_t handle;

 if ( !force2D && cg_draw3dIcons.integer ) {

  VectorClear( angles );

  cm = cgs.media.redFlagModel;


  trap_R_ModelBounds( cm, mins, maxs );

  origin[2] = -0.5 * ( mins[2] + maxs[2] );
  origin[1] = 0.5 * ( mins[1] + maxs[1] );



  len = 0.5 * ( maxs[2] - mins[2] );
  origin[0] = len / 0.268;

  angles[YAW] = 60 * sin( cg.time / 2000.0 );;

  if( team == TEAM_RED ) {
   handle = cgs.media.redFlagModel;
  } else if( team == TEAM_BLUE ) {
   handle = cgs.media.blueFlagModel;
  } else if( team == TEAM_FREE ) {
   handle = cgs.media.neutralFlagModel;
  } else {
   return;
  }
  CG_Draw3DModel( x, y, w, h, handle, 0, origin, angles );
 } else if ( cg_drawIcons.integer ) {
  gitem_t *item;

  if( team == TEAM_RED ) {
   item = BG_FindItemForPowerup( PW_REDFLAG );
  } else if( team == TEAM_BLUE ) {
   item = BG_FindItemForPowerup( PW_BLUEFLAG );
  } else if( team == TEAM_FREE ) {
   item = BG_FindItemForPowerup( PW_NEUTRALFLAG );
  } else {
   return;
  }
  if (item) {
    CG_DrawPic( x, y, w, h, cg_items[ ITEM_INDEX(item) ].icon );
  }
 }
}
