
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hold; } ;
typedef TYPE_1__ VPADStatus ;
typedef scalar_t__ VPADReadError ;


 int PAD_GAMEPAD ;
 int VPADRead (int ,TYPE_1__*,int,scalar_t__*) ;
 int analog_state ;
 int button_state ;
 int check_panic_button (int ) ;
 int update_analog_state (int ,TYPE_1__*) ;
 int update_button_state (int *,int ) ;
 int update_touch_state (int ,int *,TYPE_1__*) ;

__attribute__((used)) static void wpad_poll(void)
{
   VPADStatus vpad;
   VPADReadError error;

   VPADRead(PAD_GAMEPAD, &vpad, 1, &error);

   if (error)
      return;

   update_button_state(&button_state, vpad.hold);
   update_analog_state(analog_state, &vpad);
   update_touch_state(analog_state, &button_state, &vpad);
   check_panic_button(vpad.hold);
}
