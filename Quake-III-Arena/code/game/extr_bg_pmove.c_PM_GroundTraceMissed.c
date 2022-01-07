
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {double fraction; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_7__ {scalar_t__ forwardmove; } ;
struct TYPE_11__ {TYPE_2__* ps; TYPE_1__ cmd; int tracemask; int maxs; int mins; int (* trace ) (TYPE_3__*,int ,int ,int ,int*,int ,int ) ;scalar_t__ debugLevel; } ;
struct TYPE_10__ {void* walking; void* groundPlane; } ;
struct TYPE_8__ {scalar_t__ groundEntityNum; int pm_flags; int clientNum; int origin; } ;


 int Com_Printf (char*,int ) ;
 scalar_t__ ENTITYNUM_NONE ;
 int LEGS_JUMP ;
 int LEGS_JUMPB ;
 int PMF_BACKWARDS_JUMP ;
 int PM_ForceLegsAnim (int ) ;
 int VectorCopy (int ,int*) ;
 int c_pmove ;
 TYPE_6__* pm ;
 TYPE_5__ pml ;
 void* qfalse ;
 int stub1 (TYPE_3__*,int ,int ,int ,int*,int ,int ) ;

__attribute__((used)) static void PM_GroundTraceMissed( void ) {
 trace_t trace;
 vec3_t point;

 if ( pm->ps->groundEntityNum != ENTITYNUM_NONE ) {

  if ( pm->debugLevel ) {
   Com_Printf("%i:lift\n", c_pmove);
  }



  VectorCopy( pm->ps->origin, point );
  point[2] -= 64;

  pm->trace (&trace, pm->ps->origin, pm->mins, pm->maxs, point, pm->ps->clientNum, pm->tracemask);
  if ( trace.fraction == 1.0 ) {
   if ( pm->cmd.forwardmove >= 0 ) {
    PM_ForceLegsAnim( LEGS_JUMP );
    pm->ps->pm_flags &= ~PMF_BACKWARDS_JUMP;
   } else {
    PM_ForceLegsAnim( LEGS_JUMPB );
    pm->ps->pm_flags |= PMF_BACKWARDS_JUMP;
   }
  }
 }

 pm->ps->groundEntityNum = ENTITYNUM_NONE;
 pml.groundPlane = qfalse;
 pml.walking = qfalse;
}
