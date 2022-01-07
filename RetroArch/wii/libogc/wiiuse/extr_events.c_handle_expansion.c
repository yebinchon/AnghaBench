
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_2__ {int type; int mp; int classic; int nunchuk; } ;
struct wiimote_t {TYPE_1__ exp; } ;





 int classic_ctrl_event (int *,int *) ;
 int motion_plus_event (int *,int *) ;
 int nunchuk_event (int *,int *) ;

__attribute__((used)) static void handle_expansion(struct wiimote_t *wm,ubyte *msg)
{
 switch (wm->exp.type) {
  case 128:
   nunchuk_event(&wm->exp.nunchuk, msg);
   break;
  case 130:
   classic_ctrl_event(&wm->exp.classic, msg);
   break;
   case 129:
    motion_plus_event(&wm->exp.mp, msg);
    break;
  default:
   break;
 }
}
