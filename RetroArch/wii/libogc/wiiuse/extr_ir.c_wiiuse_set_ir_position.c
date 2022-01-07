
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; int* offset; int aspect; } ;
struct wiimote_t {TYPE_1__ ir; } ;
typedef enum ir_position_t { ____Placeholder_ir_position_t } ir_position_t ;


 int WIIUSE_ASPECT_16_9 ;
 int WIIUSE_ASPECT_4_3 ;


 int WM_ASPECT_16_9_Y ;
 int WM_ASPECT_4_3_Y ;

void wiiuse_set_ir_position(struct wiimote_t* wm, enum ir_position_t pos) {
 if (!wm) return;

 wm->ir.pos = pos;

 switch (pos) {

  case 129:
   wm->ir.offset[0] = 0;

   if (wm->ir.aspect == WIIUSE_ASPECT_16_9)
    wm->ir.offset[1] = WM_ASPECT_16_9_Y/2 - 70;
   else if (wm->ir.aspect == WIIUSE_ASPECT_4_3)
    wm->ir.offset[1] = WM_ASPECT_4_3_Y/2 - 100;

   return;

  case 128:
   wm->ir.offset[0] = 0;

   if (wm->ir.aspect == WIIUSE_ASPECT_16_9)
    wm->ir.offset[1] = -WM_ASPECT_16_9_Y/2 + 70;
   else if (wm->ir.aspect == WIIUSE_ASPECT_4_3)
    wm->ir.offset[1] = -WM_ASPECT_4_3_Y/2 + 100;

   return;

  default:
   return;
 };
}
