
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
typedef int USBKeyboard_led ;
struct TYPE_2__ {int leds; } ;


 TYPE_1__* _kbd ;
 scalar_t__ _set_output_report () ;

s32 USBKeyboard_ToggleLed(const USBKeyboard_led led)
{
 if (!_kbd)
  return -1;

 _kbd->leds = _kbd->leds ^ (1 << led);

 if (_set_output_report() < 0)
  return -2;

 return 1;
}
