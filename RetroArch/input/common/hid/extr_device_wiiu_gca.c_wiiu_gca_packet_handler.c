
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ gca_pad_t ;


 int memcpy (int ,int *,int) ;
 int update_buttons (TYPE_1__*) ;
 int wiiu_gca_update_analog_state (TYPE_1__*) ;

__attribute__((used)) static void wiiu_gca_packet_handler(void *data, uint8_t *packet, uint16_t size)
{
   gca_pad_t *pad = (gca_pad_t *)data;
   uint32_t i, pressed_keys;

   if(!pad || !packet || size > sizeof(pad->data))
      return;

   memcpy(pad->data, packet, size);
   update_buttons(pad);
   wiiu_gca_update_analog_state(pad);
}
