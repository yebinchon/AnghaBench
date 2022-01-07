
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {float frametime; } ;
struct TYPE_4__ {float* velocity; } ;


 float DotProduct (float*,float*) ;
 int VectorMA (float*,float,float*,float*) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;

__attribute__((used)) static void PM_Accelerate( vec3_t wishdir, float wishspeed, float accel ) {


 int i;
 float addspeed, accelspeed, currentspeed;

 currentspeed = DotProduct (pm->ps->velocity, wishdir);
 addspeed = wishspeed - currentspeed;
 if (addspeed <= 0) {
  return;
 }
 accelspeed = accel*pml.frametime*wishspeed;
 if (accelspeed > addspeed) {
  accelspeed = addspeed;
 }

 for (i=0 ; i<3 ; i++) {
  pm->ps->velocity[i] += accelspeed*wishdir[i];
 }
}
