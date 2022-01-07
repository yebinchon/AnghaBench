
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int hModel; } ;
struct TYPE_12__ {TYPE_2__ e; } ;
typedef TYPE_3__ trRefEntity_t ;
struct TYPE_13__ {TYPE_5__* bmodel; } ;
typedef TYPE_4__ model_t ;
struct TYPE_14__ {int numSurfaces; scalar_t__ firstSurface; int bounds; } ;
typedef TYPE_5__ bmodel_t ;
struct TYPE_15__ {TYPE_1__* currentEntity; } ;
struct TYPE_10__ {int needDlights; } ;


 int CULL_OUT ;
 int R_AddWorldSurface (scalar_t__,int ) ;
 int R_CullLocalBox (int ) ;
 int R_DlightBmodel (TYPE_5__*) ;
 TYPE_4__* R_GetModelByHandle (int ) ;
 TYPE_6__ tr ;

void R_AddBrushModelSurfaces ( trRefEntity_t *ent ) {
 bmodel_t *bmodel;
 int clip;
 model_t *pModel;
 int i;

 pModel = R_GetModelByHandle( ent->e.hModel );

 bmodel = pModel->bmodel;

 clip = R_CullLocalBox( bmodel->bounds );
 if ( clip == CULL_OUT ) {
  return;
 }

 R_DlightBmodel( bmodel );

 for ( i = 0 ; i < bmodel->numSurfaces ; i++ ) {
  R_AddWorldSurface( bmodel->firstSurface + i, tr.currentEntity->needDlights );
 }
}
