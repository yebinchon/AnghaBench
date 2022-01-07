
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hidpad_ps4_data {int slot; int connection; TYPE_1__* driver; } ;
typedef int report_buffer ;
struct TYPE_2__ {int (* send_control ) (int ,int*,int) ;} ;


 int stub1 (int ,int*,int) ;

__attribute__((used)) static void hidpad_ps4_send_control(struct hidpad_ps4_data* device)
{

   static uint8_t report_buffer[79] = {
      0x52, 0x11, 0xB0, 0x00, 0x0F
   };
   device->driver->send_control(device->connection,
         report_buffer, sizeof(report_buffer));
}
