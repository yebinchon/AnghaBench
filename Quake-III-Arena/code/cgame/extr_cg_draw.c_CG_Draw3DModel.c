
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int fov_x; int fov_y; float x; float y; float width; float height; int time; int viewaxis; int rdflags; int renderfx; void* customSkin; void* hModel; int origin; int axis; } ;
typedef TYPE_1__ refdef_t ;
typedef int refdef ;
typedef TYPE_1__ refEntity_t ;
typedef void* qhandle_t ;
typedef int ent ;
struct TYPE_12__ {int time; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;


 int AnglesToAxis (int ,int ) ;
 int AxisClear (int ) ;
 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 int RDF_NOWORLDMODEL ;
 int RF_NOSHADOW ;
 int VectorCopy (int ,int ) ;
 TYPE_8__ cg ;
 TYPE_7__ cg_draw3dIcons ;
 TYPE_6__ cg_drawIcons ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;
 int trap_R_ClearScene () ;
 int trap_R_RenderScene (TYPE_1__*) ;

void CG_Draw3DModel( float x, float y, float w, float h, qhandle_t model, qhandle_t skin, vec3_t origin, vec3_t angles ) {
 refdef_t refdef;
 refEntity_t ent;

 if ( !cg_draw3dIcons.integer || !cg_drawIcons.integer ) {
  return;
 }

 CG_AdjustFrom640( &x, &y, &w, &h );

 memset( &refdef, 0, sizeof( refdef ) );

 memset( &ent, 0, sizeof( ent ) );
 AnglesToAxis( angles, ent.axis );
 VectorCopy( origin, ent.origin );
 ent.hModel = model;
 ent.customSkin = skin;
 ent.renderfx = RF_NOSHADOW;

 refdef.rdflags = RDF_NOWORLDMODEL;

 AxisClear( refdef.viewaxis );

 refdef.fov_x = 30;
 refdef.fov_y = 30;

 refdef.x = x;
 refdef.y = y;
 refdef.width = w;
 refdef.height = h;

 refdef.time = cg.time;

 trap_R_ClearScene();
 trap_R_AddRefEntityToScene( &ent );
 trap_R_RenderScene( &refdef );
}
