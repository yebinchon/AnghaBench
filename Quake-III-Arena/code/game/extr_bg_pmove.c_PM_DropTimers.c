
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {scalar_t__ msec; } ;
struct TYPE_4__ {scalar_t__ pm_time; scalar_t__ legsTimer; scalar_t__ torsoTimer; int pm_flags; } ;


 int PMF_ALL_TIMES ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;

__attribute__((used)) static void PM_DropTimers( void ) {

 if ( pm->ps->pm_time ) {
  if ( pml.msec >= pm->ps->pm_time ) {
   pm->ps->pm_flags &= ~PMF_ALL_TIMES;
   pm->ps->pm_time = 0;
  } else {
   pm->ps->pm_time -= pml.msec;
  }
 }


 if ( pm->ps->legsTimer > 0 ) {
  pm->ps->legsTimer -= pml.msec;
  if ( pm->ps->legsTimer < 0 ) {
   pm->ps->legsTimer = 0;
  }
 }

 if ( pm->ps->torsoTimer > 0 ) {
  pm->ps->torsoTimer -= pml.msec;
  if ( pm->ps->torsoTimer < 0 ) {
   pm->ps->torsoTimer = 0;
  }
 }
}
