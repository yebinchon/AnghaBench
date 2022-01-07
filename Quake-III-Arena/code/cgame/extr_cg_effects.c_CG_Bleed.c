
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_13__ {int rotation; int radius; int renderfx; int customShader; int reType; int origin; } ;
struct TYPE_14__ {TYPE_4__ refEntity; scalar_t__ startTime; scalar_t__ endTime; int leType; } ;
typedef TYPE_5__ localEntity_t ;
struct TYPE_17__ {TYPE_3__* snap; scalar_t__ time; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_10__ {int bloodExplosionShader; } ;
struct TYPE_15__ {TYPE_1__ media; } ;
struct TYPE_11__ {int clientNum; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;


 TYPE_5__* CG_AllocLocalEntity () ;
 int LE_EXPLOSION ;
 int RF_THIRD_PERSON ;
 int RT_SPRITE ;
 int VectorCopy (int ,int ) ;
 TYPE_8__ cg ;
 TYPE_7__ cg_blood ;
 TYPE_6__ cgs ;
 int rand () ;

void CG_Bleed( vec3_t origin, int entityNum ) {
 localEntity_t *ex;

 if ( !cg_blood.integer ) {
  return;
 }

 ex = CG_AllocLocalEntity();
 ex->leType = LE_EXPLOSION;

 ex->startTime = cg.time;
 ex->endTime = ex->startTime + 500;

 VectorCopy ( origin, ex->refEntity.origin);
 ex->refEntity.reType = RT_SPRITE;
 ex->refEntity.rotation = rand() % 360;
 ex->refEntity.radius = 24;

 ex->refEntity.customShader = cgs.media.bloodExplosionShader;


 if ( entityNum == cg.snap->ps.clientNum ) {
  ex->refEntity.renderfx |= RF_THIRD_PERSON;
 }
}
