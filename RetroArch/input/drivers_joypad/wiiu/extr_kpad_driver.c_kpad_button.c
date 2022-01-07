
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int button_state; } ;


 int UINT64_C (int) ;
 int kpad_query_pad (unsigned int) ;
 int to_wiimote_channel (unsigned int) ;
 TYPE_1__* wiimotes ;

__attribute__((used)) static bool kpad_button(unsigned pad, uint16_t button_bit)
{
   int channel;
   if (!kpad_query_pad(pad))
      return 0;

   channel = to_wiimote_channel(pad);
   if(channel < 0)
      return 0;

   return wiimotes[channel].button_state
      & (UINT64_C(1) << button_bit);
}
