
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ps4 {int dummy; } ;
struct hidpad_ps4_data {int have_led; int data; } ;


 int hidpad_ps4_send_control (struct hidpad_ps4_data*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void hidpad_ps4_packet_handler(void *data,
      uint8_t *packet, uint16_t size)
{
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;

   if (!device)
      return;
   memcpy(&device->data, &packet[2], sizeof(struct ps4));
}
