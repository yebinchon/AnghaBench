
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* barrelTime; int barrelSpinning; int barrelAngle; int torsoAnim; } ;
typedef TYPE_1__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 int AngleMod (float) ;
 int COAST_TIME ;
 int SPIN_SPEED ;
 int TORSO_ATTACK ;
 int TORSO_ATTACK2 ;
 void* dp_realtime ;

float UI_MachinegunSpinAngle( playerInfo_t *pi ) {
 int delta;
 float angle;
 float speed;
 int torsoAnim;

 delta = dp_realtime - pi->barrelTime;
 if ( pi->barrelSpinning ) {
  angle = pi->barrelAngle + delta * SPIN_SPEED;
 } else {
  if ( delta > COAST_TIME ) {
   delta = COAST_TIME;
  }

  speed = 0.5 * ( SPIN_SPEED + (float)( COAST_TIME - delta ) / COAST_TIME );
  angle = pi->barrelAngle + delta * speed;
 }

 torsoAnim = pi->torsoAnim & ~ANIM_TOGGLEBIT;
 if( torsoAnim == TORSO_ATTACK2 ) {
  torsoAnim = TORSO_ATTACK;
 }
 if ( pi->barrelSpinning == !(torsoAnim == TORSO_ATTACK) ) {
  pi->barrelTime = dp_realtime;
  pi->barrelAngle = AngleMod( angle );
  pi->barrelSpinning = !!(torsoAnim == TORSO_ATTACK);
 }

 return angle;
}
