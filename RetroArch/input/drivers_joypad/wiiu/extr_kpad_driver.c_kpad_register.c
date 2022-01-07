
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ type; } ;


 int RARCH_ERR (char*) ;
 int get_slot_for_channel (unsigned int) ;
 int input_pad_connect (int,int *) ;
 int kpad_deregister (unsigned int) ;
 int kpad_driver ;
 TYPE_1__* wiimotes ;

__attribute__((used)) static void kpad_register(unsigned channel, uint8_t device_type)
{
   if (wiimotes[channel].type != device_type)
   {
      int slot;

      kpad_deregister(channel);
      slot = get_slot_for_channel(channel);

      if(slot < 0)
      {
         RARCH_ERR("Couldn't get a slot for this remote.\n");
         return;
      }

      wiimotes[channel].type = device_type;
      input_pad_connect(slot, &kpad_driver);
   }
}
