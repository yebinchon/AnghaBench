
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_2__ {int data_fmt; } ;


 int WIIUSE_CONTINUOUS ;



 int * __wpads ;
 TYPE_1__* __wpdcb ;
 int wiiuse_motion_sensing (int ,int) ;
 int wiiuse_set_flags (int ,int ,int ) ;
 int wiiuse_set_ir (int ,int) ;

__attribute__((used)) static void __wpad_setfmt(s32 chan)
{
 switch(__wpdcb[chan].data_fmt) {
  case 130:
   wiiuse_set_flags(__wpads[chan], 0, WIIUSE_CONTINUOUS);
   wiiuse_motion_sensing(__wpads[chan],0);
   wiiuse_set_ir(__wpads[chan],0);
   break;
  case 129:
   wiiuse_set_flags(__wpads[chan], WIIUSE_CONTINUOUS, 0);
   wiiuse_motion_sensing(__wpads[chan],1);
   wiiuse_set_ir(__wpads[chan],0);
   break;
  case 128:
   wiiuse_set_flags(__wpads[chan], WIIUSE_CONTINUOUS, 0);
   wiiuse_motion_sensing(__wpads[chan],1);
   wiiuse_set_ir(__wpads[chan],1);
   break;
  default:
   break;
 }
}
