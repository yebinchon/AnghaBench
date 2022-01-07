
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {int* endpos; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_5__ {int phys_jumpvel; } ;


 TYPE_1__ AAS_Trace (int*,int *,int *,int*,int,int ) ;
 int AngleVectors (int*,int*,int*,int *) ;
 int CONTENTS_SOLID ;
 size_t PITCH ;
 size_t ROLL ;
 int VectorAdd (int*,int*,int*) ;
 int VectorCopy (int*,int*) ;
 double VectorLength (int*) ;
 int VectorMA (int*,double,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,double,int*) ;
 int VectorSubtract (int*,int*,int*) ;
 size_t YAW ;
 TYPE_2__ aassettings ;

float AAS_WeaponJumpZVelocity(vec3_t origin, float radiusdamage)
{
 vec3_t kvel, v, start, end, forward, right, viewangles, dir;
 float mass, knockback, points;
 vec3_t rocketoffset = {8, 8, -8};
 vec3_t botmins = {-16, -16, -24};
 vec3_t botmaxs = {16, 16, 32};
 bsp_trace_t bsptrace;


 viewangles[PITCH] = 90;
 viewangles[YAW] = 0;
 viewangles[ROLL] = 0;

 VectorCopy(origin, start);
 start[2] += 8;
 AngleVectors(viewangles, forward, right, ((void*)0));
 start[0] += forward[0] * rocketoffset[0] + right[0] * rocketoffset[1];
 start[1] += forward[1] * rocketoffset[0] + right[1] * rocketoffset[1];
 start[2] += forward[2] * rocketoffset[0] + right[2] * rocketoffset[1] + rocketoffset[2];

 VectorMA(start, 500, forward, end);

 bsptrace = AAS_Trace(start, ((void*)0), ((void*)0), end, 1, CONTENTS_SOLID);

 VectorAdd(botmins, botmaxs, v);
 VectorMA(origin, 0.5, v, v);
 VectorSubtract(bsptrace.endpos, v, v);

 points = radiusdamage - 0.5 * VectorLength(v);
 if (points < 0) points = 0;

 points *= 0.5;

 mass = 200;

 knockback = points;

 VectorSubtract(origin, bsptrace.endpos, dir);
 VectorNormalize(dir);

 VectorScale(dir, 1600.0 * (float)knockback / mass, kvel);

 return kvel[2] + aassettings.phys_jumpvel;
}
