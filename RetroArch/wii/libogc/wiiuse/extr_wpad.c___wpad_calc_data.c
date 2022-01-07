
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct accel_t {int dummy; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_12__ {TYPE_1__ pos; } ;
struct nunchuk_t {int btns; int gforce; int accel; struct accel_t accel_calib; int orient; TYPE_5__ js; } ;
struct classic_ctrl_t {int r_shoulder; int l_shoulder; int btns; TYPE_5__ rjs; TYPE_5__ ljs; int ls_raw; int rs_raw; } ;
typedef int f32 ;
struct TYPE_9__ {int type; struct classic_ctrl_t classic; struct nunchuk_t nunchuk; } ;
struct TYPE_11__ {int glitch_cnt; int error_cnt; int angle; int z; int distance; int ay; int ax; int sy; int sx; int y; int x; int sensorbar; int state; } ;
struct TYPE_10__ {scalar_t__ err; int data_present; int btns_h; TYPE_2__ exp; int orient; TYPE_4__ ir; int gforce; int accel; } ;
typedef TYPE_3__ WPADData ;




 int WPAD_DATA_ACCEL ;
 int WPAD_DATA_EXPANSION ;
 int WPAD_DATA_IR ;
 scalar_t__ WPAD_ERR_NONE ;
 int calc_joystick_state (TYPE_5__*,int ,int ) ;
 int calculate_gforce (struct accel_t*,int *,int *) ;
 int calculate_orientation (struct accel_t*,int *,int *,int ) ;
 int interpret_ir_data (TYPE_4__*,int *) ;

__attribute__((used)) static void __wpad_calc_data(WPADData *data,WPADData *lstate,struct accel_t *accel_calib,u32 smoothed)
{
 if(data->err!=WPAD_ERR_NONE) return;

 data->orient = lstate->orient;

 data->ir.state = lstate->ir.state;
 data->ir.sensorbar = lstate->ir.sensorbar;
 data->ir.x = lstate->ir.x;
 data->ir.y = lstate->ir.y;
 data->ir.sx = lstate->ir.sx;
 data->ir.sy = lstate->ir.sy;
 data->ir.ax = lstate->ir.ax;
 data->ir.ay = lstate->ir.ay;
 data->ir.distance = lstate->ir.distance;
 data->ir.z = lstate->ir.z;
 data->ir.angle = lstate->ir.angle;
 data->ir.error_cnt = lstate->ir.error_cnt;
 data->ir.glitch_cnt = lstate->ir.glitch_cnt;

 if(data->data_present & WPAD_DATA_ACCEL) {
  calculate_orientation(accel_calib, &data->accel, &data->orient, smoothed);
  calculate_gforce(accel_calib, &data->accel, &data->gforce);
 }
 if(data->data_present & WPAD_DATA_IR) {
  interpret_ir_data(&data->ir,&data->orient);
 }
 if(data->data_present & WPAD_DATA_EXPANSION) {
  switch(data->exp.type) {
   case 128:
   {
    struct nunchuk_t *nc = &data->exp.nunchuk;

    nc->orient = lstate->exp.nunchuk.orient;
    calc_joystick_state(&nc->js,nc->js.pos.x,nc->js.pos.y);
    calculate_orientation(&nc->accel_calib,&nc->accel,&nc->orient,smoothed);
    calculate_gforce(&nc->accel_calib,&nc->accel,&nc->gforce);
    data->btns_h |= (data->exp.nunchuk.btns<<16);
   }
   break;

   case 129:
   {
    struct classic_ctrl_t *cc = &data->exp.classic;

    cc->r_shoulder = ((f32)cc->rs_raw/0x1F);
    cc->l_shoulder = ((f32)cc->ls_raw/0x1F);
    calc_joystick_state(&cc->ljs, cc->ljs.pos.x, cc->ljs.pos.y);
    calc_joystick_state(&cc->rjs, cc->rjs.pos.x, cc->rjs.pos.y);
    data->btns_h |= (data->exp.classic.btns<<16);
   }
   break;
   default:
    break;
  }
 }
 *lstate = *data;
}
