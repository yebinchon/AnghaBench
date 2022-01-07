
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int waterlevel; TYPE_2__* ps; } ;
struct TYPE_5__ {int surfaceFlags; } ;
struct TYPE_7__ {float* previous_origin; float* previous_velocity; TYPE_1__ groundTrace; } ;
struct TYPE_6__ {int pm_flags; float* origin; float gravity; scalar_t__* stats; scalar_t__ bobCycle; int legsTimer; } ;


 int EV_FALL_FAR ;
 int EV_FALL_MEDIUM ;
 int EV_FALL_SHORT ;
 int LEGS_LAND ;
 int LEGS_LANDB ;
 int PMF_BACKWARDS_JUMP ;
 int PMF_DUCKED ;
 int PM_AddEvent (int ) ;
 int PM_FootstepForSurface () ;
 int PM_ForceLegsAnim (int ) ;
 size_t STAT_HEALTH ;
 int SURF_NODAMAGE ;
 int TIMER_LAND ;
 TYPE_4__* pm ;
 TYPE_3__ pml ;
 float sqrt (float) ;

__attribute__((used)) static void PM_CrashLand( void ) {
 float delta;
 float dist;
 float vel, acc;
 float t;
 float a, b, c, den;


 if ( pm->ps->pm_flags & PMF_BACKWARDS_JUMP ) {
  PM_ForceLegsAnim( LEGS_LANDB );
 } else {
  PM_ForceLegsAnim( LEGS_LAND );
 }

 pm->ps->legsTimer = TIMER_LAND;


 dist = pm->ps->origin[2] - pml.previous_origin[2];
 vel = pml.previous_velocity[2];
 acc = -pm->ps->gravity;

 a = acc / 2;
 b = vel;
 c = -dist;

 den = b * b - 4 * a * c;
 if ( den < 0 ) {
  return;
 }
 t = (-b - sqrt( den ) ) / ( 2 * a );

 delta = vel + t * acc;
 delta = delta*delta * 0.0001;


 if ( pm->ps->pm_flags & PMF_DUCKED ) {
  delta *= 2;
 }


 if ( pm->waterlevel == 3 ) {
  return;
 }


 if ( pm->waterlevel == 2 ) {
  delta *= 0.25;
 }
 if ( pm->waterlevel == 1 ) {
  delta *= 0.5;
 }

 if ( delta < 1 ) {
  return;
 }





 if ( !(pml.groundTrace.surfaceFlags & SURF_NODAMAGE) ) {
  if ( delta > 60 ) {
   PM_AddEvent( EV_FALL_FAR );
  } else if ( delta > 40 ) {

   if ( pm->ps->stats[STAT_HEALTH] > 0 ) {
    PM_AddEvent( EV_FALL_MEDIUM );
   }
  } else if ( delta > 7 ) {
   PM_AddEvent( EV_FALL_SHORT );
  } else {
   PM_AddEvent( PM_FootstepForSurface() );
  }
 }


 pm->ps->bobCycle = 0;
}
