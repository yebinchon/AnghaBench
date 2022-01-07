
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hidpad_ps3_data {int slot; int* motors; int connection; TYPE_1__* driver; } ;
typedef int report_buffer ;
struct TYPE_2__ {int (* send_control ) (int ,int*,int) ;int (* set_report ) (int ,int ,int ,int*,int) ;} ;


 int DS3_RUMBLE_REPORT_ID ;
 int HID_REPORT_OUTPUT ;
 int stub1 (int ,int*,int) ;
 int stub2 (int ,int ,int ,int*,int) ;
 int stub3 (int ,int*,int) ;

__attribute__((used)) static void hidpad_ps3_send_control(struct hidpad_ps3_data* device)
{

   static uint8_t report_buffer[] = {
      0x52, 0x01,
      0x00, 0xFF, 0x00, 0xFF, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00,
      0xff, 0x27, 0x10, 0x00, 0x32,
      0xff, 0x27, 0x10, 0x00, 0x32,
      0xff, 0x27, 0x10, 0x00, 0x32,
      0xff, 0x27, 0x10, 0x00, 0x32,
      0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
   };


   report_buffer[11] = 1 << ((device->slot % 4) + 1);

   report_buffer[4] = device->motors[1] >> 8;
   report_buffer[6] = device->motors[0] >> 8;
   device->driver->send_control(device->connection, report_buffer, sizeof(report_buffer));

}
