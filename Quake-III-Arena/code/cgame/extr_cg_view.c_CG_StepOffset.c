
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* vieworg; } ;
struct TYPE_4__ {int time; int stepTime; int stepChange; TYPE_1__ refdef; } ;


 int STEP_TIME ;
 TYPE_2__ cg ;

__attribute__((used)) static void CG_StepOffset( void ) {
 int timeDelta;


 timeDelta = cg.time - cg.stepTime;
 if ( timeDelta < STEP_TIME ) {
  cg.refdef.vieworg[2] -= cg.stepChange
   * (STEP_TIME - timeDelta) / STEP_TIME;
 }
}
