
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {scalar_t__* normal; } ;
struct TYPE_12__ {double fraction; scalar_t__ entityNum; TYPE_2__ plane; scalar_t__ allsolid; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_9__ {scalar_t__ forwardmove; } ;
struct TYPE_14__ {TYPE_3__* ps; scalar_t__ debugLevel; TYPE_1__ cmd; int tracemask; int maxs; int mins; int (* trace ) (TYPE_4__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;} ;
struct TYPE_13__ {int* previous_velocity; void* walking; void* groundPlane; TYPE_4__ groundTrace; } ;
struct TYPE_11__ {scalar_t__* velocity; int pm_flags; scalar_t__ groundEntityNum; int pm_time; int clientNum; scalar_t__* origin; } ;


 int Com_Printf (char*,int ) ;
 int DotProduct (scalar_t__*,scalar_t__*) ;
 scalar_t__ ENTITYNUM_NONE ;
 int LEGS_JUMP ;
 int LEGS_JUMPB ;
 scalar_t__ MIN_WALK_NORMAL ;
 int PMF_BACKWARDS_JUMP ;
 int PMF_TIME_LAND ;
 int PMF_TIME_WATERJUMP ;
 int PM_AddTouchEnt (scalar_t__) ;
 int PM_CorrectAllSolid (TYPE_4__*) ;
 int PM_CrashLand () ;
 int PM_ForceLegsAnim (int ) ;
 int PM_GroundTraceMissed () ;
 int c_pmove ;
 TYPE_7__* pm ;
 TYPE_6__ pml ;
 void* qfalse ;
 void* qtrue ;
 int stub1 (TYPE_4__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;

__attribute__((used)) static void PM_GroundTrace( void ) {
 vec3_t point;
 trace_t trace;

 point[0] = pm->ps->origin[0];
 point[1] = pm->ps->origin[1];
 point[2] = pm->ps->origin[2] - 0.25;

 pm->trace (&trace, pm->ps->origin, pm->mins, pm->maxs, point, pm->ps->clientNum, pm->tracemask);
 pml.groundTrace = trace;


 if ( trace.allsolid ) {
  if ( !PM_CorrectAllSolid(&trace) )
   return;
 }


 if ( trace.fraction == 1.0 ) {
  PM_GroundTraceMissed();
  pml.groundPlane = qfalse;
  pml.walking = qfalse;
  return;
 }


 if ( pm->ps->velocity[2] > 0 && DotProduct( pm->ps->velocity, trace.plane.normal ) > 10 ) {
  if ( pm->debugLevel ) {
   Com_Printf("%i:kickoff\n", c_pmove);
  }

  if ( pm->cmd.forwardmove >= 0 ) {
   PM_ForceLegsAnim( LEGS_JUMP );
   pm->ps->pm_flags &= ~PMF_BACKWARDS_JUMP;
  } else {
   PM_ForceLegsAnim( LEGS_JUMPB );
   pm->ps->pm_flags |= PMF_BACKWARDS_JUMP;
  }

  pm->ps->groundEntityNum = ENTITYNUM_NONE;
  pml.groundPlane = qfalse;
  pml.walking = qfalse;
  return;
 }


 if ( trace.plane.normal[2] < MIN_WALK_NORMAL ) {
  if ( pm->debugLevel ) {
   Com_Printf("%i:steep\n", c_pmove);
  }


  pm->ps->groundEntityNum = ENTITYNUM_NONE;
  pml.groundPlane = qtrue;
  pml.walking = qfalse;
  return;
 }

 pml.groundPlane = qtrue;
 pml.walking = qtrue;


 if (pm->ps->pm_flags & PMF_TIME_WATERJUMP)
 {
  pm->ps->pm_flags &= ~(PMF_TIME_WATERJUMP | PMF_TIME_LAND);
  pm->ps->pm_time = 0;
 }

 if ( pm->ps->groundEntityNum == ENTITYNUM_NONE ) {

  if ( pm->debugLevel ) {
   Com_Printf("%i:Land\n", c_pmove);
  }

  PM_CrashLand();


  if ( pml.previous_velocity[2] < -200 ) {

   pm->ps->pm_flags |= PMF_TIME_LAND;
   pm->ps->pm_time = 250;
  }
 }

 pm->ps->groundEntityNum = trace.entityNum;




 PM_AddTouchEnt( trace.entityNum );
}
