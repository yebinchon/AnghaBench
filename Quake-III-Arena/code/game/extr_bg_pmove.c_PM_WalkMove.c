
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_11__ {float forwardmove; float rightmove; } ;
typedef TYPE_4__ usercmd_t ;
struct TYPE_13__ {int waterlevel; TYPE_3__* ps; TYPE_4__ cmd; } ;
struct TYPE_8__ {int normal; } ;
struct TYPE_9__ {int surfaceFlags; TYPE_1__ plane; } ;
struct TYPE_12__ {float* forward; float* right; int frametime; TYPE_2__ groundTrace; } ;
struct TYPE_10__ {int pm_flags; float speed; float* velocity; int gravity; } ;


 scalar_t__ DotProduct (float*,int ) ;
 int OVERCLIP ;
 int PMF_DUCKED ;
 int PMF_TIME_KNOCKBACK ;
 int PM_Accelerate (float*,float,float) ;
 int PM_AirMove () ;
 scalar_t__ PM_CheckJump () ;
 int PM_ClipVelocity (float*,int ,float*,int ) ;
 float PM_CmdScale (TYPE_4__*) ;
 int PM_Friction () ;
 int PM_SetMovementDir () ;
 int PM_StepSlideMove (int ) ;
 int PM_WaterMove () ;
 int SURF_SLICK ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 TYPE_6__* pm ;
 float pm_accelerate ;
 float pm_airaccelerate ;
 float pm_duckScale ;
 double pm_swimScale ;
 TYPE_5__ pml ;
 int qfalse ;

__attribute__((used)) static void PM_WalkMove( void ) {
 int i;
 vec3_t wishvel;
 float fmove, smove;
 vec3_t wishdir;
 float wishspeed;
 float scale;
 usercmd_t cmd;
 float accelerate;
 float vel;

 if ( pm->waterlevel > 2 && DotProduct( pml.forward, pml.groundTrace.plane.normal ) > 0 ) {

  PM_WaterMove();
  return;
 }


 if ( PM_CheckJump () ) {

  if ( pm->waterlevel > 1 ) {
   PM_WaterMove();
  } else {
   PM_AirMove();
  }
  return;
 }

 PM_Friction ();

 fmove = pm->cmd.forwardmove;
 smove = pm->cmd.rightmove;

 cmd = pm->cmd;
 scale = PM_CmdScale( &cmd );


 PM_SetMovementDir();


 pml.forward[2] = 0;
 pml.right[2] = 0;


 PM_ClipVelocity (pml.forward, pml.groundTrace.plane.normal, pml.forward, OVERCLIP );
 PM_ClipVelocity (pml.right, pml.groundTrace.plane.normal, pml.right, OVERCLIP );

 VectorNormalize (pml.forward);
 VectorNormalize (pml.right);

 for ( i = 0 ; i < 3 ; i++ ) {
  wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
 }



 VectorCopy (wishvel, wishdir);
 wishspeed = VectorNormalize(wishdir);
 wishspeed *= scale;


 if ( pm->ps->pm_flags & PMF_DUCKED ) {
  if ( wishspeed > pm->ps->speed * pm_duckScale ) {
   wishspeed = pm->ps->speed * pm_duckScale;
  }
 }


 if ( pm->waterlevel ) {
  float waterScale;

  waterScale = pm->waterlevel / 3.0;
  waterScale = 1.0 - ( 1.0 - pm_swimScale ) * waterScale;
  if ( wishspeed > pm->ps->speed * waterScale ) {
   wishspeed = pm->ps->speed * waterScale;
  }
 }



 if ( ( pml.groundTrace.surfaceFlags & SURF_SLICK ) || pm->ps->pm_flags & PMF_TIME_KNOCKBACK ) {
  accelerate = pm_airaccelerate;
 } else {
  accelerate = pm_accelerate;
 }

 PM_Accelerate (wishdir, wishspeed, accelerate);




 if ( ( pml.groundTrace.surfaceFlags & SURF_SLICK ) || pm->ps->pm_flags & PMF_TIME_KNOCKBACK ) {
  pm->ps->velocity[2] -= pm->ps->gravity * pml.frametime;
 } else {


 }

 vel = VectorLength(pm->ps->velocity);


 PM_ClipVelocity (pm->ps->velocity, pml.groundTrace.plane.normal,
  pm->ps->velocity, OVERCLIP );


 VectorNormalize(pm->ps->velocity);
 VectorScale(pm->ps->velocity, vel, pm->ps->velocity);


 if (!pm->ps->velocity[0] && !pm->ps->velocity[1]) {
  return;
 }

 PM_StepSlideMove( qfalse );



}
