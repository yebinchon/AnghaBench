
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; int mp; int classic; int nunchuk; } ;
struct TYPE_4__ {int mp; int classic; int nunchuk; } ;
struct TYPE_6__ {TYPE_1__ exp; int ir; int accel; int btns; } ;
struct wiimote_t {TYPE_2__ exp; TYPE_3__ lstate; int ir; int accel; int btns; } ;






__attribute__((used)) static void __save_state(struct wiimote_t* wm) {

 wm->lstate.btns = wm->btns;
 wm->lstate.accel = wm->accel;


 wm->lstate.ir = wm->ir;


 switch (wm->exp.type) {
  case 128:
   wm->lstate.exp.nunchuk = wm->exp.nunchuk;
   break;
  case 130:
   wm->lstate.exp.classic = wm->exp.classic;
   break;
  case 129:
   wm->lstate.exp.mp = wm->exp.mp;
   break;
 }
}
