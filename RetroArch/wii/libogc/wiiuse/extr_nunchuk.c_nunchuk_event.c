
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_12__ {int x; int y; int z; } ;
struct TYPE_11__ {int x; int y; } ;
struct TYPE_10__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {TYPE_4__ pos; TYPE_3__ max; TYPE_2__ min; TYPE_1__ center; } ;
struct nunchuk_t {int gforce; TYPE_5__ accel; int accel_calib; int orient; TYPE_7__ js; } ;


 int NUNCHUK_IS_FLAG_SET (struct nunchuk_t*,int ) ;
 int WIIUSE_SMOOTHING ;
 int calc_joystick_state (TYPE_7__*,scalar_t__,scalar_t__) ;
 int calculate_gforce (int *,TYPE_5__*,int *) ;
 int calculate_orientation (int *,TYPE_5__*,int *,int ) ;
 int nunchuk_pressed_buttons (struct nunchuk_t*,int) ;

void nunchuk_event(struct nunchuk_t* nc, ubyte* msg) {
 nunchuk_pressed_buttons(nc, msg[5]);

 nc->js.pos.x = msg[0];
 nc->js.pos.y = msg[1];


 if (nc->js.center.x) {
  if (nc->js.min.x > nc->js.pos.x) nc->js.min.x = nc->js.pos.x;
  if (nc->js.max.x < nc->js.pos.x) nc->js.max.x = nc->js.pos.x;
 }
 if (nc->js.center.y) {
  if (nc->js.min.y > nc->js.pos.y) nc->js.min.y = nc->js.pos.y;
  if (nc->js.max.y < nc->js.pos.y) nc->js.max.y = nc->js.pos.y;
 }



 calc_joystick_state(&nc->js, nc->js.pos.x, nc->js.pos.y);


 nc->accel.x = (msg[2]<<2) + ((msg[5]>>2)&3);
 nc->accel.y = (msg[3]<<2) + ((msg[5]>>4)&3);
 nc->accel.z = (msg[4]<<2) + ((msg[5]>>6)&3);

 calculate_orientation(&nc->accel_calib, &nc->accel, &nc->orient, NUNCHUK_IS_FLAG_SET(nc, WIIUSE_SMOOTHING));
 calculate_gforce(&nc->accel_calib, &nc->accel, &nc->gforce);

}
