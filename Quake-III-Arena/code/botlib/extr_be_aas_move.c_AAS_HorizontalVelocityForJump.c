
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_2__ {float phys_gravity; float phys_maxvelocity; } ;


 int VectorSubtract (float*,float*,float*) ;
 TYPE_1__ aassettings ;
 float sqrt (float) ;

int AAS_HorizontalVelocityForJump(float zvel, vec3_t start, vec3_t end, float *velocity)
{
 float phys_gravity, phys_maxvelocity;
 float maxjump, height2fall, t, top;
 vec3_t dir;

 phys_gravity = aassettings.phys_gravity;
 phys_maxvelocity = aassettings.phys_maxvelocity;


 maxjump = 0.5 * phys_gravity * (zvel / phys_gravity) * (zvel / phys_gravity);

 top = start[2] + maxjump;

 height2fall = top - end[2];

 if (height2fall < 0)
 {
  *velocity = phys_maxvelocity;
  return 0;
 }

 t = sqrt(height2fall / (0.5 * phys_gravity));

 VectorSubtract(end, start, dir);

 if ( (t + zvel / phys_gravity) == 0.0f ) {
  *velocity = phys_maxvelocity;
  return 0;
 }

 *velocity = sqrt(dir[0]*dir[0] + dir[1]*dir[1]) / (t + zvel / phys_gravity);

 if (*velocity > phys_maxvelocity)
 {
  *velocity = phys_maxvelocity;
  return 0;
 }
 return 1;
}
