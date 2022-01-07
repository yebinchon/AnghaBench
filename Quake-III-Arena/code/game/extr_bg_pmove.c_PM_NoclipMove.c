
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {float forwardmove; float rightmove; scalar_t__ upmove; } ;
struct TYPE_7__ {TYPE_1__* ps; TYPE_4__ cmd; } ;
struct TYPE_6__ {float frametime; float* forward; float* right; } ;
struct TYPE_5__ {float* velocity; int origin; int viewheight; } ;


 int DEFAULT_VIEWHEIGHT ;
 int PM_Accelerate (float*,float,int ) ;
 float PM_CmdScale (TYPE_4__*) ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 int VectorMA (int ,float,float*,int ) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 TYPE_3__* pm ;
 int pm_accelerate ;
 double pm_friction ;
 float pm_stopspeed ;
 TYPE_2__ pml ;
 float* vec3_origin ;

__attribute__((used)) static void PM_NoclipMove( void ) {
 float speed, drop, friction, control, newspeed;
 int i;
 vec3_t wishvel;
 float fmove, smove;
 vec3_t wishdir;
 float wishspeed;
 float scale;

 pm->ps->viewheight = DEFAULT_VIEWHEIGHT;



 speed = VectorLength (pm->ps->velocity);
 if (speed < 1)
 {
  VectorCopy (vec3_origin, pm->ps->velocity);
 }
 else
 {
  drop = 0;

  friction = pm_friction*1.5;
  control = speed < pm_stopspeed ? pm_stopspeed : speed;
  drop += control*friction*pml.frametime;


  newspeed = speed - drop;
  if (newspeed < 0)
   newspeed = 0;
  newspeed /= speed;

  VectorScale (pm->ps->velocity, newspeed, pm->ps->velocity);
 }


 scale = PM_CmdScale( &pm->cmd );

 fmove = pm->cmd.forwardmove;
 smove = pm->cmd.rightmove;

 for (i=0 ; i<3 ; i++)
  wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
 wishvel[2] += pm->cmd.upmove;

 VectorCopy (wishvel, wishdir);
 wishspeed = VectorNormalize(wishdir);
 wishspeed *= scale;

 PM_Accelerate( wishdir, wishspeed, pm_accelerate );


 VectorMA (pm->ps->origin, pml.frametime, pm->ps->velocity, pm->ps->origin);
}
