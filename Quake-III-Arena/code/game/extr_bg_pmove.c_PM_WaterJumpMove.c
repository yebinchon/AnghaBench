
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int frametime; } ;
struct TYPE_4__ {scalar_t__* velocity; int gravity; scalar_t__ pm_time; int pm_flags; } ;


 int PMF_ALL_TIMES ;
 int PM_StepSlideMove (int ) ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;
 int qtrue ;

__attribute__((used)) static void PM_WaterJumpMove( void ) {


 PM_StepSlideMove( qtrue );

 pm->ps->velocity[2] -= pm->ps->gravity * pml.frametime;
 if (pm->ps->velocity[2] < 0) {

  pm->ps->pm_flags &= ~PMF_ALL_TIMES;
  pm->ps->pm_time = 0;
 }
}
