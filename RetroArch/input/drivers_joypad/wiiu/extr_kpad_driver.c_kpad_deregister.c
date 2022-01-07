
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pad_list; } ;
struct TYPE_7__ {int (* name ) (int) ;} ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int connected; } ;


 int WIIMOTE_TYPE_NONE ;
 int* channel_slot_map ;
 TYPE_4__ hid_instance ;
 int input_autoconfigure_disconnect (int,int ) ;
 TYPE_3__ kpad_driver ;
 int stub1 (int) ;
 TYPE_2__* wiimotes ;

__attribute__((used)) static void kpad_deregister(unsigned channel)
{
   int slot = channel_slot_map[channel];

   if(slot >= 0)
   {
      input_autoconfigure_disconnect(slot, kpad_driver.name(slot));
      wiimotes[channel].type = WIIMOTE_TYPE_NONE;
      hid_instance.pad_list[slot].connected = 0;
      channel_slot_map[channel] = -1;
   }
}
