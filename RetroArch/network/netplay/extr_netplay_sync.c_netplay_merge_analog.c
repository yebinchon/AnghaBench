
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct delta_frame {int dummy; } ;
typedef int netplay_t ;
typedef int netplay_input_state_t ;


 unsigned int RETRO_DEVICE_ANALOG ;
 unsigned int RETRO_DEVICE_JOYPAD ;
 unsigned int RETRO_DEVICE_KEYBOARD ;
 int merge_analog_part (int *,int ,struct delta_frame*,int ,int ,int,int) ;

__attribute__((used)) static void netplay_merge_analog(netplay_t *netplay,
      netplay_input_state_t resstate, struct delta_frame *simframe,
      uint32_t device, uint32_t clients, unsigned dtype)
{

   if (dtype == RETRO_DEVICE_JOYPAD || dtype == RETRO_DEVICE_KEYBOARD)
      return;


   merge_analog_part(netplay, resstate, simframe, device, clients, 1, 0);
   merge_analog_part(netplay, resstate, simframe, device, clients, 1, 16);


   if (dtype == RETRO_DEVICE_ANALOG)
   {
      merge_analog_part(netplay, resstate, simframe, device, clients, 2, 0);
      merge_analog_part(netplay, resstate, simframe, device, clients, 2, 16);
   }
}
