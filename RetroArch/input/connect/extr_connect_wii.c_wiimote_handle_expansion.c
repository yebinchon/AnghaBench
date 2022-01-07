
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int classic; } ;
struct TYPE_4__ {int type; TYPE_1__ cc; } ;
struct connect_wii_wiimote_t {TYPE_2__ exp; } ;



 int classic_ctrl_event (int *,int *) ;

__attribute__((used)) static void wiimote_handle_expansion(struct connect_wii_wiimote_t* wm, uint8_t* msg)
{
   switch (wm->exp.type)
   {
      case 128:
         classic_ctrl_event(&wm->exp.cc.classic, msg);
         break;
      default:
         break;
   }
}
