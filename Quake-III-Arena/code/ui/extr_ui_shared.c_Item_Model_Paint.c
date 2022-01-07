
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef double* vec3_t ;
struct TYPE_15__ {float x; float y; float width; float height; float fov_x; float fov_y; scalar_t__ time; double* origin; double* lightingOrigin; int renderfx; double* oldorigin; int hModel; int axis; int viewaxis; int rdflags; } ;
typedef TYPE_3__ refdef_t ;
typedef int refdef ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_16__ {float fov_x; float fov_y; scalar_t__ rotationSpeed; int angle; } ;
typedef TYPE_5__ modelDef_t ;
struct TYPE_13__ {int x; int y; int w; int h; } ;
struct TYPE_14__ {scalar_t__ nextTime; TYPE_1__ rect; } ;
struct TYPE_17__ {double textscale; int asset; TYPE_2__ window; scalar_t__ typeData; } ;
typedef TYPE_6__ itemDef_t ;
typedef int ent ;
struct TYPE_12__ {scalar_t__ realTime; int (* renderScene ) (TYPE_3__*) ;int (* addRefEntityToScene ) (TYPE_3__*) ;int (* clearScene ) () ;int (* modelBounds ) (int ,double*,double*) ;} ;


 int AdjustFrom640 (float*,float*,float*,float*) ;
 int AnglesToAxis (double*,int ) ;
 int AxisClear (int ) ;
 TYPE_11__* DC ;
 int RDF_NOWORLDMODEL ;
 int RF_LIGHTING_ORIGIN ;
 int RF_NOSHADOW ;
 int VectorCopy (double*,double*) ;
 int VectorSet (double*,int ,int,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ qtrue ;
 int stub1 (int ,double*,double*) ;
 int stub2 () ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

void Item_Model_Paint(itemDef_t *item) {
 float x, y, w, h;
 refdef_t refdef;
 refEntity_t ent;
 vec3_t mins, maxs, origin;
 vec3_t angles;
 modelDef_t *modelPtr = (modelDef_t*)item->typeData;

 if (modelPtr == ((void*)0)) {
  return;
 }


 memset( &refdef, 0, sizeof( refdef ) );
 refdef.rdflags = RDF_NOWORLDMODEL;
 AxisClear( refdef.viewaxis );
 x = item->window.rect.x+1;
 y = item->window.rect.y+1;
 w = item->window.rect.w-2;
 h = item->window.rect.h-2;

 AdjustFrom640( &x, &y, &w, &h );

 refdef.x = x;
 refdef.y = y;
 refdef.width = w;
 refdef.height = h;

 DC->modelBounds( item->asset, mins, maxs );

 origin[2] = -0.5 * ( mins[2] + maxs[2] );
 origin[1] = 0.5 * ( mins[1] + maxs[1] );


 if (qtrue) {
  float len = 0.5 * ( maxs[2] - mins[2] );
  origin[0] = len / 0.268;

 } else {
  origin[0] = item->textscale;
 }
 refdef.fov_x = (modelPtr->fov_x) ? modelPtr->fov_x : w;
 refdef.fov_y = (modelPtr->fov_y) ? modelPtr->fov_y : h;






 DC->clearScene();

 refdef.time = DC->realTime;



 memset( &ent, 0, sizeof(ent) );






 if (modelPtr->rotationSpeed) {
  if (DC->realTime > item->window.nextTime) {
   item->window.nextTime = DC->realTime + modelPtr->rotationSpeed;
   modelPtr->angle = (int)(modelPtr->angle + 1) % 360;
  }
 }
 VectorSet( angles, 0, modelPtr->angle, 0 );
 AnglesToAxis( angles, ent.axis );

 ent.hModel = item->asset;
 VectorCopy( origin, ent.origin );
 VectorCopy( origin, ent.lightingOrigin );
 ent.renderfx = RF_LIGHTING_ORIGIN | RF_NOSHADOW;
 VectorCopy( ent.origin, ent.oldorigin );

 DC->addRefEntityToScene( &ent );
 DC->renderScene( &refdef );

}
