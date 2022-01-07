
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orient_t {float roll; int a_roll; float pitch; int a_pitch; } ;
struct accel_t {float st_roll; int st_alpha; float st_pitch; } ;




 int isinf (float) ;
 int isnan (float) ;

void apply_smoothing(struct accel_t* ac, struct orient_t* orient, int type) {
 switch (type) {
  case 128:
  {

   if (isnan(ac->st_roll) || isinf(ac->st_roll))
    ac->st_roll = 0.0f;





   if (((ac->st_roll < 0) && (orient->roll > 0)) || ((ac->st_roll > 0) && (orient->roll < 0))) {
    ac->st_roll = orient->roll;
   } else {
    orient->roll = ac->st_roll + (ac->st_alpha * (orient->a_roll - ac->st_roll));
    ac->st_roll = orient->roll;
   }

   return;
  }

  case 129:
  {
   if (isnan(ac->st_pitch) || isinf(ac->st_pitch))
    ac->st_pitch = 0.0f;

   if (((ac->st_pitch < 0) && (orient->pitch > 0)) || ((ac->st_pitch > 0) && (orient->pitch < 0))) {
    ac->st_pitch = orient->pitch;
   } else {
    orient->pitch = ac->st_pitch + (ac->st_alpha * (orient->a_pitch - ac->st_pitch));
    ac->st_pitch = orient->pitch;
   }

   return;
  }
 }
}
