
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_t {int ax; } ;


 float RAD_TO_DEGREE (int ) ;
 double WIIMOTE_FOV_COEFFICIENT ;
 int atanf (float) ;

float calc_yaw(struct ir_t* ir) {
 float x;

 x = ir->ax - 512;
 x *= WIIMOTE_FOV_COEFFICIENT / 512.0;

 return RAD_TO_DEGREE( atanf(x) );
}
