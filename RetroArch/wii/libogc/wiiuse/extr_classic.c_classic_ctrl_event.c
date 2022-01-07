
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_3__ {int x; int y; } ;
struct TYPE_4__ {TYPE_1__ pos; } ;
struct classic_ctrl_t {int type; int ls_raw; int btns; int rs_raw; float r_shoulder; float l_shoulder; TYPE_2__ rjs; TYPE_2__ ljs; } ;


 int BIG_ENDIAN_SHORT (short) ;
 int CLASSIC_CTRL_BUTTON_FULL_L ;
 int CLASSIC_CTRL_BUTTON_FULL_R ;
 int calc_joystick_state (TYPE_2__*,int,int) ;
 int classic_ctrl_pressed_buttons (struct classic_ctrl_t*,int ) ;
 scalar_t__ l ;
 scalar_t__ r ;

void classic_ctrl_event(struct classic_ctrl_t* cc, ubyte* msg) {







 if (cc->type==2) {
  classic_ctrl_pressed_buttons(cc, BIG_ENDIAN_SHORT(*(short*)(msg + 8)));


  cc->ljs.pos.x = (msg[0] >> 4) | (msg[1] << 4);
  cc->rjs.pos.x = (msg[2] >> 4) | (msg[3] << 4);
  cc->ljs.pos.y = (msg[4] >> 4) | (msg[5] << 4);
  cc->rjs.pos.y = (msg[6] >> 4) | (msg[7] << 4);

  cc->ls_raw = cc->btns & CLASSIC_CTRL_BUTTON_FULL_L ? 0x1F : 0;
  cc->rs_raw = cc->btns & CLASSIC_CTRL_BUTTON_FULL_R ? 0x1F : 0;
 }
 else {
  classic_ctrl_pressed_buttons(cc, BIG_ENDIAN_SHORT(*(short*)(msg + 4)));


  cc->ls_raw = (((msg[2] & 0x60) >> 2) | ((msg[3] & 0xE0) >> 5));
  cc->rs_raw = (msg[3] & 0x1F);






  cc->r_shoulder = ((float)r / 0x1F);
  cc->l_shoulder = ((float)l / 0x1F);


  cc->ljs.pos.x = (msg[0] & 0x3F);
  cc->ljs.pos.y = (msg[1] & 0x3F);
  cc->rjs.pos.x = ((msg[0] & 0xC0) >> 3) | ((msg[1] & 0xC0) >> 5) | ((msg[2] & 0x80) >> 7);
  cc->rjs.pos.y = (msg[2] & 0x1F);
 }


 calc_joystick_state(&cc->ljs, cc->ljs.pos.x, cc->ljs.pos.y);
 calc_joystick_state(&cc->rjs, cc->rjs.pos.x, cc->rjs.pos.y);

}
