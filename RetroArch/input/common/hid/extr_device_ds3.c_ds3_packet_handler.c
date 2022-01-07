
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int led_set; int data; scalar_t__ pad; } ;
typedef TYPE_1__ ds3_instance_t ;
typedef int ds3_control_packet ;


 int RARCH_ERR (char*,int,int) ;
 int ds3_send_control_packet (TYPE_1__*) ;
 int ds3_update_analog_state (TYPE_1__*) ;
 int ds3_update_pad_state (TYPE_1__*) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void ds3_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   ds3_instance_t *instance = (ds3_instance_t *)data;

   if(instance->pad && !instance->led_set)
   {
      ds3_send_control_packet(instance);
      instance->led_set = 1;
   }

   if(size > sizeof(ds3_control_packet))
   {
      RARCH_ERR("[ds3]: Expecting packet to be %d but was %d\n",
         sizeof(ds3_control_packet), size);
      return;
   }

   memcpy(instance->data, packet, size);
   ds3_update_pad_state(instance);
   ds3_update_analog_state(instance);
}
