
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ reType; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_11__ {TYPE_1__* entities; } ;
struct TYPE_10__ {int (* Error ) (int ,char*,scalar_t__) ;} ;
struct TYPE_9__ {size_t smpFrame; int registered; } ;
struct TYPE_7__ {int lightingCalculated; TYPE_2__ e; } ;


 size_t ENTITYNUM_WORLD ;
 int ERR_DROP ;
 scalar_t__ RT_MAX_REF_ENTITY_TYPE ;
 TYPE_5__** backEndData ;
 int qfalse ;
 size_t r_numentities ;
 TYPE_4__ ri ;
 int stub1 (int ,char*,scalar_t__) ;
 TYPE_3__ tr ;

void RE_AddRefEntityToScene( const refEntity_t *ent ) {
 if ( !tr.registered ) {
  return;
 }

 if ( r_numentities >= ENTITYNUM_WORLD ) {
  return;
 }
 if ( ent->reType < 0 || ent->reType >= RT_MAX_REF_ENTITY_TYPE ) {
  ri.Error( ERR_DROP, "RE_AddRefEntityToScene: bad reType %i", ent->reType );
 }

 backEndData[tr.smpFrame]->entities[r_numentities].e = *ent;
 backEndData[tr.smpFrame]->entities[r_numentities].lightingCalculated = qfalse;

 r_numentities++;
}
