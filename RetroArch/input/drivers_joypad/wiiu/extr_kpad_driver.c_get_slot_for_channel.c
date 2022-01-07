
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pad_list; } ;
struct TYPE_3__ {int connected; } ;


 int RARCH_LOG (char*,int) ;
 int* channel_slot_map ;
 TYPE_2__ hid_instance ;
 int pad_connection_find_vacant_pad (TYPE_1__*) ;

__attribute__((used)) static int get_slot_for_channel(unsigned channel)
{
   int slot = pad_connection_find_vacant_pad(hid_instance.pad_list);
   if(slot >= 0)
   {
      RARCH_LOG("[kpad]: got slot %d\n", slot);
      channel_slot_map[channel] = slot;
      hid_instance.pad_list[slot].connected = 1;
   }

   return slot;
}
