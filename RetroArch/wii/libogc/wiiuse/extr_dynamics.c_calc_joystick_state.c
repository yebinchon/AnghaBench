
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
struct TYPE_5__ {float x; float y; } ;
struct TYPE_4__ {float x; float y; } ;
struct joystick_t {int mag; int ang; TYPE_3__ min; TYPE_2__ center; TYPE_1__ max; } ;


 int RAD_TO_DEGREE (int ) ;
 int atan2f (float,float) ;
 int hypotf (float,float) ;

void calc_joystick_state(struct joystick_t* js, float x, float y) {
 float rx, ry;
 if (x == js->center.x)
  rx = 0;
 else if (x >= js->center.x)
  rx = ((float)(x - js->center.x) / (float)(js->max.x - js->center.x));
 else
  rx = ((float)(x - js->min.x) / (float)(js->center.x - js->min.x)) - 1.0f;

 if (y == js->center.y)
  ry = 0;
 else if (y >= js->center.y)
  ry = ((float)(y - js->center.y) / (float)(js->max.y - js->center.y));
 else
  ry = ((float)(y - js->min.y) / (float)(js->center.y - js->min.y)) - 1.0f;


 js->ang = RAD_TO_DEGREE(atan2f(rx, ry));
 js->mag = hypotf(rx, ry);
}
