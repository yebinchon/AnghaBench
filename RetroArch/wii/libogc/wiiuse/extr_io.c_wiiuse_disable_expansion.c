
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int mp; int classic; int nunchuk; } ;
struct wiimote_t {TYPE_1__ exp; int event; } ;




 int EXP_NONE ;

 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIUSE_CLASSIC_CTRL_REMOVED ;
 int WIIUSE_MOTION_PLUS_REMOVED ;
 int WIIUSE_NUNCHUK_REMOVED ;
 int classic_ctrl_disconnected (int *) ;
 int motion_plus_disconnected (int *) ;
 int nunchuk_disconnected (int *) ;
 int wiiuse_set_ir_mode (struct wiimote_t*) ;
 int wiiuse_status (struct wiimote_t*,int *) ;

void wiiuse_disable_expansion(struct wiimote_t *wm)
{
 if(!WIIMOTE_IS_SET(wm, WIIMOTE_STATE_EXP)) return;


 switch(wm->exp.type) {
  case 128:
   nunchuk_disconnected(&wm->exp.nunchuk);
   wm->event = WIIUSE_NUNCHUK_REMOVED;
   break;
  case 130:
   classic_ctrl_disconnected(&wm->exp.classic);
   wm->event = WIIUSE_CLASSIC_CTRL_REMOVED;
   break;
  case 129:
    motion_plus_disconnected(&wm->exp.mp);
    wm->event = WIIUSE_MOTION_PLUS_REMOVED;
    break;

  default:
   break;
 }

 WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP);
 wm->exp.type = EXP_NONE;

 wiiuse_set_ir_mode(wm);
 wiiuse_status(wm,((void*)0));
}
