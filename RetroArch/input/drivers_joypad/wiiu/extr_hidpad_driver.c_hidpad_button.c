
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int HID_BUTTON (unsigned int,int ) ;
 int hidpad_query_pad (unsigned int) ;

__attribute__((used)) static bool hidpad_button(unsigned pad, uint16_t button)
{
   if (!hidpad_query_pad(pad))
      return 0;

   return HID_BUTTON(pad, button);
}
