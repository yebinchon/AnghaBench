
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_2__ {double value; } ;


 int VectorAdd (double*,double*,double*) ;
 int VectorCopy (double*,double*) ;
 float VectorNormalize (double*) ;
 int VectorScale (double*,double,double*) ;
 int VectorSet (double*,int ,int ,int ) ;
 int VectorSubtract (double*,double*,double*) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* sv_gravity ;

int BotAirControl(vec3_t origin, vec3_t velocity, vec3_t goal, vec3_t dir, float *speed)
{
 vec3_t org, vel;
 float dist;
 int i;

 VectorCopy(origin, org);
 VectorScale(velocity, 0.1, vel);
 for (i = 0; i < 50; i++)
 {
  vel[2] -= sv_gravity->value * 0.01;

  if (vel[2] < 0 && org[2] + vel[2] < goal[2])
  {
   VectorScale(vel, (goal[2] - org[2]) / vel[2], vel);
   VectorAdd(org, vel, org);
   VectorSubtract(goal, org, dir);
   dist = VectorNormalize(dir);
   if (dist > 32) dist = 32;
   *speed = 400 - (400 - 13 * dist);
   return qtrue;
  }
  else
  {
   VectorAdd(org, vel, org);
  }
 }
 VectorSet(dir, 0, 0, 0);
 *speed = 400;
 return qfalse;
}
