
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
struct TYPE_13__ {TYPE_3__* ps; TYPE_4__ cmd; } ;
struct TYPE_8__ {int normal; } ;
struct TYPE_9__ {TYPE_1__ plane; } ;
struct TYPE_12__ {float* forward; float* right; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_10__ {int pm_flags; int velocity; } ;


 int OVERCLIP ;
 int PMF_GRAPPLE_PULL ;
 int PM_Accelerate (float*,float,int ) ;
 int PM_ClipVelocity (int ,int ,int ,int ) ;
 float PM_CmdScale (TYPE_4__*) ;
 int PM_Friction () ;
 int PM_SetMovementDir () ;
 int PM_SlideMove (int ) ;
 int PM_StepSlideMove (int ) ;
 int VectorCopy (float*,float*) ;
 float VectorNormalize (float*) ;
 TYPE_6__* pm ;
 int pm_airaccelerate ;
 TYPE_5__ pml ;
 int qtrue ;

__attribute__((used)) static void PM_AirMove( void ) {
 int i;
 vec3_t wishvel;
 float fmove, smove;
 vec3_t wishdir;
 float wishspeed;
 float scale;
 usercmd_t cmd;

 PM_Friction();

 fmove = pm->cmd.forwardmove;
 smove = pm->cmd.rightmove;

 cmd = pm->cmd;
 scale = PM_CmdScale( &cmd );


 PM_SetMovementDir();


 pml.forward[2] = 0;
 pml.right[2] = 0;
 VectorNormalize (pml.forward);
 VectorNormalize (pml.right);

 for ( i = 0 ; i < 2 ; i++ ) {
  wishvel[i] = pml.forward[i]*fmove + pml.right[i]*smove;
 }
 wishvel[2] = 0;

 VectorCopy (wishvel, wishdir);
 wishspeed = VectorNormalize(wishdir);
 wishspeed *= scale;


 PM_Accelerate (wishdir, wishspeed, pm_airaccelerate);




 if ( pml.groundPlane ) {
  PM_ClipVelocity (pm->ps->velocity, pml.groundTrace.plane.normal,
   pm->ps->velocity, OVERCLIP );
 }
 PM_StepSlideMove ( qtrue );
}
