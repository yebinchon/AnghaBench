
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aspect; int pos; int * vres; } ;
struct wiimote_t {TYPE_1__ ir; } ;
typedef enum aspect_t { ____Placeholder_aspect_t } aspect_t ;


 int WIIUSE_ASPECT_4_3 ;
 int WM_ASPECT_16_9_X ;
 int WM_ASPECT_16_9_Y ;
 int WM_ASPECT_4_3_X ;
 int WM_ASPECT_4_3_Y ;
 int wiiuse_set_ir_position (struct wiimote_t*,int ) ;

void wiiuse_set_aspect_ratio(struct wiimote_t* wm, enum aspect_t aspect) {
 if (!wm) return;

 wm->ir.aspect = aspect;

 if (aspect == WIIUSE_ASPECT_4_3) {
  wm->ir.vres[0] = WM_ASPECT_4_3_X;
  wm->ir.vres[1] = WM_ASPECT_4_3_Y;
 } else {
  wm->ir.vres[0] = WM_ASPECT_16_9_X;
  wm->ir.vres[1] = WM_ASPECT_16_9_Y;
 }


 wiiuse_set_ir_position(wm, wm->ir.pos);
}
