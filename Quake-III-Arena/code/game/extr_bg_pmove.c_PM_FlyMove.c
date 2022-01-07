
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {float forwardmove; float rightmove; float upmove; } ;
struct TYPE_5__ {TYPE_3__ cmd; } ;
struct TYPE_4__ {float* forward; float* right; } ;


 int PM_Accelerate (float*,float,int ) ;
 float PM_CmdScale (TYPE_3__*) ;
 int PM_Friction () ;
 int PM_StepSlideMove (int ) ;
 int VectorCopy (float*,float*) ;
 float VectorNormalize (float*) ;
 TYPE_2__* pm ;
 int pm_flyaccelerate ;
 TYPE_1__ pml ;
 int qfalse ;

__attribute__((used)) static void PM_FlyMove( void ) {
 int i;
 vec3_t wishvel;
 float wishspeed;
 vec3_t wishdir;
 float scale;


 PM_Friction ();

 scale = PM_CmdScale( &pm->cmd );



 if ( !scale ) {
  wishvel[0] = 0;
  wishvel[1] = 0;
  wishvel[2] = 0;
 } else {
  for (i=0 ; i<3 ; i++) {
   wishvel[i] = scale * pml.forward[i]*pm->cmd.forwardmove + scale * pml.right[i]*pm->cmd.rightmove;
  }

  wishvel[2] += scale * pm->cmd.upmove;
 }

 VectorCopy (wishvel, wishdir);
 wishspeed = VectorNormalize(wishdir);

 PM_Accelerate (wishdir, wishspeed, pm_flyaccelerate);

 PM_StepSlideMove( qfalse );
}
