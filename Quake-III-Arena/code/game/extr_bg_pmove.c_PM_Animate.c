
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons; } ;
struct TYPE_6__ {TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_5__ {int torsoTimer; } ;


 int BUTTON_AFFIRMATIVE ;
 int BUTTON_FOLLOWME ;
 int BUTTON_GESTURE ;
 int BUTTON_GETFLAG ;
 int BUTTON_GUARDBASE ;
 int BUTTON_NEGATIVE ;
 int BUTTON_PATROL ;
 int EV_TAUNT ;
 int PM_AddEvent (int ) ;
 int PM_StartTorsoAnim (int ) ;
 int TIMER_GESTURE ;
 int TORSO_AFFIRMATIVE ;
 int TORSO_FOLLOWME ;
 int TORSO_GESTURE ;
 int TORSO_GETFLAG ;
 int TORSO_GUARDBASE ;
 int TORSO_NEGATIVE ;
 int TORSO_PATROL ;
 TYPE_3__* pm ;

__attribute__((used)) static void PM_Animate( void ) {
 if ( pm->cmd.buttons & BUTTON_GESTURE ) {
  if ( pm->ps->torsoTimer == 0 ) {
   PM_StartTorsoAnim( TORSO_GESTURE );
   pm->ps->torsoTimer = TIMER_GESTURE;
   PM_AddEvent( EV_TAUNT );
  }
 }
}
