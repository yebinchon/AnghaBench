
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int customShader; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_11__ {int powerups; } ;
typedef TYPE_3__ entityState_t ;
struct TYPE_13__ {int time; } ;
struct TYPE_9__ {int battleSuitShader; int regenShader; int quadShader; int redQuadShader; int invisShader; } ;
struct TYPE_12__ {TYPE_1__ media; } ;


 int PW_BATTLESUIT ;
 int PW_INVIS ;
 int PW_QUAD ;
 int PW_REGEN ;
 int TEAM_RED ;
 TYPE_6__ cg ;
 TYPE_5__ cgs ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;

void CG_AddRefEntityWithPowerups( refEntity_t *ent, entityState_t *state, int team ) {

 if ( state->powerups & ( 1 << PW_INVIS ) ) {
  ent->customShader = cgs.media.invisShader;
  trap_R_AddRefEntityToScene( ent );
 } else {
   trap_R_AddRefEntityToScene( ent );


  if ( state->powerups & ( 1 << PW_QUAD ) )
  {
   if (team == TEAM_RED)
    ent->customShader = cgs.media.redQuadShader;
   else
    ent->customShader = cgs.media.quadShader;
   trap_R_AddRefEntityToScene( ent );
  }
  if ( state->powerups & ( 1 << PW_REGEN ) ) {
   if ( ( ( cg.time / 100 ) % 10 ) == 1 ) {
    ent->customShader = cgs.media.regenShader;
    trap_R_AddRefEntityToScene( ent );
   }
  }
  if ( state->powerups & ( 1 << PW_BATTLESUIT ) ) {
   ent->customShader = cgs.media.battleSuitShader;
   trap_R_AddRefEntityToScene( ent );
  }
 }
}
