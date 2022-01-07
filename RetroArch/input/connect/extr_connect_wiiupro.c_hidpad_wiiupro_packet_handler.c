
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct wiiupro {int dummy; } ;
struct TYPE_5__ {int calib_round; int* hatvalue_calib; } ;
struct TYPE_4__ {int b; int a; int y; int x; int l; int r; int zl; int zr; int minus; int plus; int l3; int r3; int left; int right; int up; int down; int home; } ;
struct TYPE_6__ {int* hatvalue; TYPE_1__ btn; } ;
struct hidpad_wiiupro_data {int have_led; TYPE_2__ calib; TYPE_3__ data; } ;


 int hidpad_wiiupro_send_control (struct hidpad_wiiupro_data*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void hidpad_wiiupro_packet_handler(void *data,
      uint8_t *packet, uint16_t size)
{
   struct hidpad_wiiupro_data *device = (struct hidpad_wiiupro_data*)data;

   if (!device)
      return;
   packet[0x0C] ^= 0xFF;
   packet[0x0D] ^= 0xFF;
   packet[0x0E] ^= 0xFF;

   memset(&device->data, 0, sizeof(struct wiiupro));

   device->data.btn.b = (packet[0x0D] & 0x40) ? 1 : 0;
   device->data.btn.a = (packet[0x0D] & 0x10) ? 1 : 0;
   device->data.btn.y = (packet[0x0D] & 0x20) ? 1 : 0;
   device->data.btn.x = (packet[0x0D] & 0x08) ? 1 : 0;
   device->data.btn.l = (packet[0x0C] & 0x20) ? 1 : 0;
   device->data.btn.r = (packet[0x0C] & 0x02) ? 1 : 0;
   device->data.btn.zl = (packet[0x0D] & 0x80) ? 1 : 0;
   device->data.btn.zr = (packet[0x0D] & 0x04) ? 1 : 0;
   device->data.btn.minus = (packet[0x0C] & 0x10) ? 1 : 0;
   device->data.btn.plus = (packet[0x0C] & 0x04) ? 1 : 0;
   device->data.btn.l3 = (packet[0x0E] & 0x02) ? 1 : 0;
   device->data.btn.r3 = (packet[0x0E] & 0x01) ? 1 : 0;

   device->data.btn.left = (packet[0x0D] & 0x02) ? 1 : 0;
   device->data.btn.right = (packet[0x0C] & 0x80) ? 1 : 0;
   device->data.btn.up = (packet[0x0D] & 0x01) ? 1 : 0;
   device->data.btn.down = (packet[0x0C] & 0x40) ? 1 : 0;

   device->data.btn.home = (packet[0x0C] & 0x8) ? 1 : 0;

   if(device->calib.calib_round < 5)
   {
       device->calib.hatvalue_calib[0] = (packet[4] | (packet[4 + 1] << 8));
       device->calib.hatvalue_calib[1] = (packet[8] | (packet[8 + 1] << 8));
       device->calib.hatvalue_calib[2] = (packet[6] | (packet[6 + 1] << 8));
       device->calib.hatvalue_calib[3] = (packet[10] | (packet[10 + 1] << 8));

       device->calib.calib_round++;
   }
   else
   {
       device->data.hatvalue[0] = (packet[4] | (packet[4 + 1] << 8))
          - device->calib.hatvalue_calib[0];
       device->data.hatvalue[1] = (packet[8] | (packet[8 + 1] << 8))
          - device->calib.hatvalue_calib[1];
       device->data.hatvalue[2] = (packet[6] | (packet[6 + 1] << 8))
          - device->calib.hatvalue_calib[2];
       device->data.hatvalue[3] = (packet[10] | (packet[10 + 1] << 8))
          - device->calib.hatvalue_calib[3];
   }
}
