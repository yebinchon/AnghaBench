
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int allsolid; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_6__ {scalar_t__ upmove; } ;
struct TYPE_9__ {int* mins; int* maxs; TYPE_2__* ps; int tracemask; int (* trace ) (TYPE_3__*,int ,int*,int*,int ,int ,int ) ;TYPE_1__ cmd; } ;
struct TYPE_7__ {int pm_flags; scalar_t__ pm_type; void* viewheight; int clientNum; int origin; scalar_t__* powerups; } ;


 void* CROUCH_VIEWHEIGHT ;
 void* DEAD_VIEWHEIGHT ;
 void* DEFAULT_VIEWHEIGHT ;
 int MINS_Z ;
 int PMF_DUCKED ;
 int PMF_INVULEXPAND ;
 scalar_t__ PM_DEAD ;
 size_t PW_INVULNERABILITY ;
 int VectorSet (int*,int,int,int) ;
 TYPE_5__* pm ;
 int stub1 (TYPE_3__*,int ,int*,int*,int ,int ,int ) ;

__attribute__((used)) static void PM_CheckDuck (void)
{
 trace_t trace;

 if ( pm->ps->powerups[PW_INVULNERABILITY] ) {
  if ( pm->ps->pm_flags & PMF_INVULEXPAND ) {

   VectorSet( pm->mins, -42, -42, -42 );
   VectorSet( pm->maxs, 42, 42, 42 );
  }
  else {
   VectorSet( pm->mins, -15, -15, MINS_Z );
   VectorSet( pm->maxs, 15, 15, 16 );
  }
  pm->ps->pm_flags |= PMF_DUCKED;
  pm->ps->viewheight = CROUCH_VIEWHEIGHT;
  return;
 }
 pm->ps->pm_flags &= ~PMF_INVULEXPAND;

 pm->mins[0] = -15;
 pm->mins[1] = -15;

 pm->maxs[0] = 15;
 pm->maxs[1] = 15;

 pm->mins[2] = MINS_Z;

 if (pm->ps->pm_type == PM_DEAD)
 {
  pm->maxs[2] = -8;
  pm->ps->viewheight = DEAD_VIEWHEIGHT;
  return;
 }

 if (pm->cmd.upmove < 0)
 {
  pm->ps->pm_flags |= PMF_DUCKED;
 }
 else
 {
  if (pm->ps->pm_flags & PMF_DUCKED)
  {

   pm->maxs[2] = 32;
   pm->trace (&trace, pm->ps->origin, pm->mins, pm->maxs, pm->ps->origin, pm->ps->clientNum, pm->tracemask );
   if (!trace.allsolid)
    pm->ps->pm_flags &= ~PMF_DUCKED;
  }
 }

 if (pm->ps->pm_flags & PMF_DUCKED)
 {
  pm->maxs[2] = 16;
  pm->ps->viewheight = CROUCH_VIEWHEIGHT;
 }
 else
 {
  pm->maxs[2] = 32;
  pm->ps->viewheight = DEFAULT_VIEWHEIGHT;
 }
}
