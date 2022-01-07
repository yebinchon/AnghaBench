
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int origin; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_7__ {float light; float startTime; float endTime; int * lightColor; TYPE_1__ refEntity; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_8__ {float time; } ;


 TYPE_4__ cg ;
 int trap_R_AddLightToScene (int ,float,int ,int ,int ) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

__attribute__((used)) static void CG_AddExplosion( localEntity_t *ex ) {
 refEntity_t *ent;

 ent = &ex->refEntity;


 trap_R_AddRefEntityToScene(ent);


 if ( ex->light ) {
  float light;

  light = (float)( cg.time - ex->startTime ) / ( ex->endTime - ex->startTime );
  if ( light < 0.5 ) {
   light = 1.0;
  } else {
   light = 1.0 - ( light - 0.5 ) * 2;
  }
  light = ex->light * light;
  trap_R_AddLightToScene(ent->origin, light, ex->lightColor[0], ex->lightColor[1], ex->lightColor[2] );
 }
}
