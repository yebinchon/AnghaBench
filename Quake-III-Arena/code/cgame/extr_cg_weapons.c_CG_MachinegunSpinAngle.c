
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int eFlags; scalar_t__ weapon; int number; } ;
struct TYPE_6__ {int barrelTime; int barrelSpinning; int barrelAngle; } ;
struct TYPE_8__ {TYPE_2__ currentState; TYPE_1__ pe; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_9__ {int time; } ;


 int AngleMod (float) ;
 int CHAN_WEAPON ;
 int COAST_TIME ;
 int EF_FIRING ;
 int SPIN_SPEED ;
 scalar_t__ WP_CHAINGUN ;
 TYPE_4__ cg ;
 int qfalse ;
 int trap_S_RegisterSound (char*,int ) ;
 int trap_S_StartSound (int *,int ,int ,int ) ;

__attribute__((used)) static float CG_MachinegunSpinAngle( centity_t *cent ) {
 int delta;
 float angle;
 float speed;

 delta = cg.time - cent->pe.barrelTime;
 if ( cent->pe.barrelSpinning ) {
  angle = cent->pe.barrelAngle + delta * SPIN_SPEED;
 } else {
  if ( delta > COAST_TIME ) {
   delta = COAST_TIME;
  }

  speed = 0.5 * ( SPIN_SPEED + (float)( COAST_TIME - delta ) / COAST_TIME );
  angle = cent->pe.barrelAngle + delta * speed;
 }

 if ( cent->pe.barrelSpinning == !(cent->currentState.eFlags & EF_FIRING) ) {
  cent->pe.barrelTime = cg.time;
  cent->pe.barrelAngle = AngleMod( angle );
  cent->pe.barrelSpinning = !!(cent->currentState.eFlags & EF_FIRING);





 }

 return angle;
}
