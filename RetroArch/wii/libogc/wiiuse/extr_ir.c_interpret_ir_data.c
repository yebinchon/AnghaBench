
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orient_t {int yaw; } ;
struct TYPE_2__ {int angle; } ;
struct ir_t {int z; int distance; scalar_t__ error_cnt; float sx; float ax; float sy; float ay; scalar_t__ glitch_cnt; int smooth_valid; float x; float y; int valid; int * vres; int aspect; int * offset; TYPE_1__ sensorbar; int angle; scalar_t__ raw_valid; } ;


 scalar_t__ ERROR_MAX_COUNT ;
 float GLITCH_DIST ;
 scalar_t__ GLITCH_MAX_COUNT ;
 int SB_Z_COEFFICIENT ;
 float SQUARED (float) ;
 int apply_ir_smoothing (struct ir_t*) ;
 int calc_yaw (struct ir_t*) ;
 int find_sensorbar (struct ir_t*,struct orient_t*) ;
 int ir_convert_to_vres (float*,float*,int ,int ,int ) ;
 scalar_t__ ir_correct_for_bounds (float*,float*,int ,int ,int ) ;

void interpret_ir_data(struct ir_t* ir, struct orient_t *orient) {

 float x,y;
 float d;

 find_sensorbar(ir, orient);

 if(ir->raw_valid) {
  ir->angle = ir->sensorbar.angle;
  ir->z = SB_Z_COEFFICIENT / ir->distance;
  orient->yaw = calc_yaw(ir);
  if(ir->error_cnt >= ERROR_MAX_COUNT) {
   ir->sx = ir->ax;
   ir->sy = ir->ay;
   ir->glitch_cnt = 0;
  } else {
   d = SQUARED(ir->ax - ir->sx) + SQUARED(ir->ay - ir->sy);
   if(d > GLITCH_DIST) {
    if(ir->glitch_cnt > GLITCH_MAX_COUNT) {
     apply_ir_smoothing(ir);
     ir->glitch_cnt = 0;
    } else {
     ir->glitch_cnt++;
    }
   } else {
    ir->glitch_cnt = 0;
    apply_ir_smoothing(ir);
   }
  }
  ir->smooth_valid = 1;
  ir->error_cnt = 0;
 } else {
  if(ir->error_cnt >= ERROR_MAX_COUNT) {
   ir->smooth_valid = 0;
  } else {
   ir->smooth_valid = 1;
   ir->error_cnt++;
  }
 }
 if(ir->smooth_valid) {
  x = ir->sx;
  y = ir->sy;
  if (ir_correct_for_bounds(&x, &y, ir->aspect, ir->offset[0], ir->offset[1])) {
   ir_convert_to_vres(&x, &y, ir->aspect, ir->vres[0], ir->vres[1]);
   ir->x = x;
   ir->y = y;
   ir->valid = 1;
  } else {
   ir->valid = 0;
  }
 } else {
  ir->valid = 0;
 }
}
