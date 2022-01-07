
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hidpad_wiiupro_data {int connection; TYPE_1__* driver; } ;
typedef int report_buffer ;
struct TYPE_2__ {int (* send_control ) (int ,int*,int) ;} ;


 int stub1 (int ,int*,int) ;

__attribute__((used)) static void hidpad_wiiupro_send_control(struct hidpad_wiiupro_data* device)
{

   static uint8_t report_buffer[4] = { 0xA2, 0x12, 0x00, 0x34 };
   device->driver->send_control(device->connection,
         report_buffer, sizeof(report_buffer));
}
