
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_slot; scalar_t__ pad_list; } ;
typedef TYPE_1__ hid_driver_instance_t ;


 unsigned int MAX_USERS ;
 int RARCH_LOG (char*) ;
 scalar_t__ pad_connection_init (unsigned int) ;

__attribute__((used)) static bool init_pad_list(hid_driver_instance_t *instance, unsigned slots)
{
   if(!instance || slots > MAX_USERS)
      return 0;

   if(instance->pad_list)
      return 1;

   RARCH_LOG("[hid]: initializing pad list...\n");
   instance->pad_list = pad_connection_init(slots);
   if(!instance->pad_list)
      return 0;

   instance->max_slot = slots;

   return 1;
}
