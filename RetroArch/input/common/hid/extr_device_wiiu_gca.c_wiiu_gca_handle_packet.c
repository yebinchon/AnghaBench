
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int device_state; int online; } ;
typedef TYPE_1__ hid_wiiu_gca_instance_t ;


 int RARCH_WARN (char*,...) ;
 int memcpy (int ,int *,size_t) ;
 int wiiu_gca_update_pad_state (TYPE_1__*) ;

__attribute__((used)) static void wiiu_gca_handle_packet(void *data, uint8_t *buffer, size_t size)
{
   hid_wiiu_gca_instance_t *instance = (hid_wiiu_gca_instance_t *)data;
   if(!instance || !instance->online)
   {
      RARCH_WARN("[gca]: instance null or not ready yet.\n");
      return;
   }

   if(size > sizeof(instance->device_state))
   {
      RARCH_WARN("[gca]: packet size %d is too big for buffer of size %d\n",
         size, sizeof(instance->device_state));
      return;
   }

   memcpy(instance->device_state, buffer, size);
   wiiu_gca_update_pad_state(instance);
}
