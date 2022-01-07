
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct connect_wii_wiimote_t {int dummy; } ;






 int wiimote_handle_expansion (struct connect_wii_wiimote_t*,int*) ;
 int wiimote_handshake (struct connect_wii_wiimote_t*,int const,int*,int) ;
 int wiimote_pressed_buttons (struct connect_wii_wiimote_t*,int*) ;

__attribute__((used)) static void hidpad_wii_packet_handler(void *data,
      uint8_t *packet, uint16_t size)
{
   struct connect_wii_wiimote_t* device = (struct connect_wii_wiimote_t*)data;
   uint8_t *msg = packet + 2;

   if (!device)
      return;

   switch (packet[1])
   {
      case 131:
         wiimote_pressed_buttons(device, msg);
         break;
      case 128:
         wiimote_pressed_buttons(device, msg);
         wiimote_handshake(device, 128, msg + 5,
               ((msg[2] & 0xF0) >> 4) + 1);
         break;
      case 129:
         wiimote_pressed_buttons(device, msg);
         wiimote_handshake(device,129,msg,-1);
         break;
      case 130:
         wiimote_pressed_buttons(device, msg);
         wiimote_handle_expansion(device, msg+2);
         break;
   }
}
