
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int (* set_axis_value ) (int ,int ,int ,int ,int ,int ,int ) ;} ;
struct TYPE_10__ {int button_state; int analog_state; } ;
struct TYPE_8__ {int stick_y; int stick_x; } ;
struct TYPE_7__ {int btns_h; int rstick_y; int rstick_x; int lstick_y; int lstick_x; } ;
struct TYPE_9__ {int device_type; int btns_h; TYPE_2__ nunchuck; TYPE_1__ classic; } ;
typedef TYPE_3__ KPADData ;


 int CLASSIC_BUTTON_MASK ;




 int WIIU_PRO_BUTTON_MASK ;
 int WIIU_READ_STICK (int ) ;
 int kpad_register (unsigned int,int) ;
 TYPE_5__ pad_functions ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ,int ,int ,int ) ;
 int stub3 (int ,int ,int ,int ,int ,int ,int ) ;
 int stub4 (int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* wiimotes ;

__attribute__((used)) static void kpad_poll_one_channel(unsigned channel, KPADData *kpad)
{
   kpad_register(channel, kpad->device_type);
   switch(kpad->device_type)
   {
      case 129:
         wiimotes[channel].button_state = kpad->classic.btns_h
            & ~WIIU_PRO_BUTTON_MASK;
         pad_functions.set_axis_value(wiimotes[channel].analog_state,
               WIIU_READ_STICK(kpad->classic.lstick_x),
               WIIU_READ_STICK(kpad->classic.lstick_y),
               WIIU_READ_STICK(kpad->classic.rstick_x),
               WIIU_READ_STICK(kpad->classic.rstick_y), 0, 0);
         break;
      case 131:
         wiimotes[channel].button_state = kpad->classic.btns_h
            & ~CLASSIC_BUTTON_MASK;
         pad_functions.set_axis_value(wiimotes[channel].analog_state,
               WIIU_READ_STICK(kpad->classic.lstick_x),
               WIIU_READ_STICK(kpad->classic.lstick_y),
               WIIU_READ_STICK(kpad->classic.rstick_x),
               WIIU_READ_STICK(kpad->classic.rstick_y), 0, 0);
         break;
      case 130:
         wiimotes[channel].button_state = kpad->btns_h;
         pad_functions.set_axis_value(wiimotes[channel].analog_state,
               WIIU_READ_STICK(kpad->nunchuck.stick_x),
               WIIU_READ_STICK(kpad->nunchuck.stick_y), 0, 0, 0, 0);
         break;
      case 128:
         wiimotes[channel].button_state = kpad->btns_h;
         pad_functions.set_axis_value(wiimotes[channel].analog_state,
               0, 0, 0, 0, 0, 0);
         break;
   }
}
