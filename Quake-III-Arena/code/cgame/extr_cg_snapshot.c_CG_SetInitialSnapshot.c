
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {size_t clientNum; } ;
struct TYPE_12__ {int numEntities; TYPE_2__* entities; int serverCommandSequence; TYPE_10__ ps; } ;
typedef TYPE_1__ snapshot_t ;
struct TYPE_13__ {size_t number; } ;
typedef TYPE_2__ entityState_t ;
struct TYPE_14__ {int currentValid; int interpolate; int currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_15__ {TYPE_1__* snap; } ;


 int BG_PlayerStateToEntityState (TYPE_10__*,int *,int ) ;
 int CG_BuildSolidList () ;
 int CG_CheckEvents (TYPE_3__*) ;
 int CG_ExecuteNewServerCommands (int ) ;
 int CG_ResetEntity (TYPE_3__*) ;
 int CG_Respawn () ;
 TYPE_6__ cg ;
 TYPE_3__* cg_entities ;
 int memcpy (int *,TYPE_2__*,int) ;
 int qfalse ;
 int qtrue ;

void CG_SetInitialSnapshot( snapshot_t *snap ) {
 int i;
 centity_t *cent;
 entityState_t *state;

 cg.snap = snap;

 BG_PlayerStateToEntityState( &snap->ps, &cg_entities[ snap->ps.clientNum ].currentState, qfalse );


 CG_BuildSolidList();

 CG_ExecuteNewServerCommands( snap->serverCommandSequence );



 CG_Respawn();

 for ( i = 0 ; i < cg.snap->numEntities ; i++ ) {
  state = &cg.snap->entities[ i ];
  cent = &cg_entities[ state->number ];

  memcpy(&cent->currentState, state, sizeof(entityState_t));

  cent->interpolate = qfalse;
  cent->currentValid = qtrue;

  CG_ResetEntity( cent );


  CG_CheckEvents( cent );
 }
}
