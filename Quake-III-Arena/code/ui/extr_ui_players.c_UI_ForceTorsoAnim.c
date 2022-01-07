
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int torsoAnim; int torsoAnimationTimer; } ;
typedef TYPE_1__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 int TORSO_ATTACK ;
 int TORSO_ATTACK2 ;
 int TORSO_GESTURE ;
 int UI_TIMER_ATTACK ;
 int UI_TIMER_GESTURE ;

__attribute__((used)) static void UI_ForceTorsoAnim( playerInfo_t *pi, int anim ) {
 pi->torsoAnim = ( ( pi->torsoAnim & ANIM_TOGGLEBIT ) ^ ANIM_TOGGLEBIT ) | anim;

 if ( anim == TORSO_GESTURE ) {
  pi->torsoAnimationTimer = UI_TIMER_GESTURE;
 }

 if ( anim == TORSO_ATTACK || anim == TORSO_ATTACK2 ) {
  pi->torsoAnimationTimer = UI_TIMER_ATTACK;
 }
}
