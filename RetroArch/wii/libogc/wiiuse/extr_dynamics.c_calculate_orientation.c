
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vec3w_t {scalar_t__ y; scalar_t__ x; scalar_t__ z; } ;
struct orient_t {float yaw; float roll; float a_roll; float pitch; float a_pitch; } ;
struct TYPE_4__ {int x; int y; scalar_t__ z; } ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; scalar_t__ z; } ;
struct accel_t {TYPE_2__ cal_g; TYPE_1__ cal_zero; } ;


 float RAD_TO_DEGREE (int ) ;
 int SMOOTH_PITCH ;
 int SMOOTH_ROLL ;
 int abs (scalar_t__) ;
 int apply_smoothing (struct accel_t*,struct orient_t*,int ) ;
 int atan2f (float,float) ;
 scalar_t__ isfinite (float) ;

void calculate_orientation(struct accel_t* ac, struct vec3w_t* accel, struct orient_t* orient, int smooth) {
 float xg, yg, zg;
 float x, y, z;
 orient->yaw = 0.0f;


 xg = (float)ac->cal_g.x;
 yg = (float)ac->cal_g.y;
 zg = (float)ac->cal_g.z;


 x = ((float)accel->x - (float)ac->cal_zero.x) / xg;
 y = ((float)accel->y - (float)ac->cal_zero.y) / yg;
 z = ((float)accel->z - (float)ac->cal_zero.z) / zg;


 if (x < -1.0f) x = -1.0f;
 else if (x > 1.0f) x = 1.0f;
 if (y < -1.0f) y = -1.0f;
 else if (y > 1.0f) y = 1.0f;
 if (z < -1.0f) z = -1.0f;
 else if (z > 1.0f) z = 1.0f;


 if (abs(accel->x - ac->cal_zero.x) <= (ac->cal_g.x+10)) {

  x = RAD_TO_DEGREE(atan2f(x, z));
  if(isfinite(x)) {
   orient->roll = x;
   orient->a_roll = x;
  }
 }

 if (abs(accel->y - ac->cal_zero.y) <= (ac->cal_g.y+10)) {

  y = RAD_TO_DEGREE(atan2f(y, z));
  if(isfinite(y)) {
   orient->pitch = y;
   orient->a_pitch = y;
  }
 }


 if (smooth) {
  apply_smoothing(ac, orient, SMOOTH_ROLL);
  apply_smoothing(ac, orient, SMOOTH_PITCH);
 }
}
