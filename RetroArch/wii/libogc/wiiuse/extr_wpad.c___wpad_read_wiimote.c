
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_21__ {TYPE_7__* dot; } ;
struct TYPE_17__ {int z; int y; int x; } ;
struct TYPE_22__ {TYPE_8__ ir; TYPE_4__ accel; int btns; } ;
struct TYPE_19__ {TYPE_5__* dot; } ;
struct TYPE_16__ {int z; int y; int x; } ;
struct TYPE_15__ {int type; } ;
struct wiimote_t {int* event_buf; int btns; TYPE_9__ lstate; TYPE_6__ ir; TYPE_3__ accel; TYPE_2__ exp; int battery_level; } ;
struct _wpad_thresh {int ir; int acc; int btns; } ;
typedef scalar_t__ s32 ;
struct TYPE_14__ {int type; } ;
struct TYPE_13__ {int btns_h; int err; scalar_t__ data_present; TYPE_6__ ir; TYPE_3__ accel; TYPE_1__ exp; int battery_level; } ;
typedef TYPE_10__ WPADData ;
struct TYPE_20__ {int ry; int rx; int visible; } ;
struct TYPE_18__ {int visible; int ry; int rx; } ;


 int STATE_CHECK (int ,int ,int ) ;
 int STATE_CHECK_SIMPLE (int ,int,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;







 scalar_t__ WPAD_DATA_ACCEL ;
 scalar_t__ WPAD_DATA_BUTTONS ;
 scalar_t__ WPAD_DATA_EXPANSION ;
 scalar_t__ WPAD_DATA_IR ;
 int WPAD_ERR_NONE ;
 int WPAD_ERR_NOT_READY ;
 int WPAD_ERR_NO_CONTROLLER ;
 int WPAD_ERR_TRANSFER ;
 int WPAD_MAX_IR_DOTS ;
 int __save_state (struct wiimote_t*) ;
 int __wpad_read_expansion (struct wiimote_t*,TYPE_10__*,struct _wpad_thresh*) ;

__attribute__((used)) static void __wpad_read_wiimote(struct wiimote_t *wm, WPADData *data, s32 *idle_time, struct _wpad_thresh *thresh)
{
 int i;
 int state_changed = 0;
 data->err = WPAD_ERR_TRANSFER;
 data->data_present = 0;
 data->battery_level = wm->battery_level;
 data->exp.type = wm->exp.type;
 if(wm && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_CONNECTED)) {
  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
   switch(wm->event_buf[0]) {
    case 134:
    case 133:
    case 131:
    case 129:
    case 132:
    case 128:
    case 130:
     data->btns_h = (wm->btns&0xffff);
     data->data_present |= WPAD_DATA_BUTTONS;
     STATE_CHECK_SIMPLE(thresh->btns, wm->btns, wm->lstate.btns);
   }
   switch(wm->event_buf[0]) {
    case 133:
    case 131:
    case 132:
    case 130:
     data->accel = wm->accel;
     data->data_present |= WPAD_DATA_ACCEL;
     STATE_CHECK(thresh->acc, wm->accel.x, wm->lstate.accel.x);
     STATE_CHECK(thresh->acc, wm->accel.y, wm->lstate.accel.y);
     STATE_CHECK(thresh->acc, wm->accel.z, wm->lstate.accel.z);
   }
   switch(wm->event_buf[0]) {


    case 131:
    case 130:
     data->ir = wm->ir;
     data->data_present |= WPAD_DATA_IR;
     for(i=0; i<WPAD_MAX_IR_DOTS; i++) {
      STATE_CHECK_SIMPLE(thresh->ir, wm->ir.dot[i].visible, wm->lstate.ir.dot[i].visible);
      STATE_CHECK(thresh->ir, wm->ir.dot[i].rx, wm->lstate.ir.dot[i].rx);
      STATE_CHECK(thresh->ir, wm->ir.dot[i].ry, wm->lstate.ir.dot[i].ry);
     }
   }
   switch(wm->event_buf[0]) {
    case 129:
    case 132:
    case 128:
    case 130:
     state_changed |= __wpad_read_expansion(wm,data,thresh);
     data->data_present |= WPAD_DATA_EXPANSION;
   }
   data->err = WPAD_ERR_NONE;
   if(state_changed) {
    *idle_time = 0;
    __save_state(wm);
   }
  } else
   data->err = WPAD_ERR_NOT_READY;
 } else
  data->err = WPAD_ERR_NO_CONTROLLER;
}
