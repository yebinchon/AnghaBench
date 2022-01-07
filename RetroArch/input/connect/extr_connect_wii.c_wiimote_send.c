
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct connect_wii_wiimote_t {int unid; int connection; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_control ) (int ,int*,int) ;} ;


 int WM_BT_OUTPUT ;
 int WM_SET_REPORT ;
 int memcpy (int*,int*,int) ;
 int printf (char*,...) ;
 int stub1 (int ,int*,int) ;

__attribute__((used)) static int wiimote_send(struct connect_wii_wiimote_t* wm,
      uint8_t report_type, uint8_t* msg, int len)
{
   uint8_t buf[32] = {0};

   buf[0] = WM_SET_REPORT | WM_BT_OUTPUT;
   buf[1] = report_type;

   memcpy(buf+2, msg, len);
   wm->driver->send_control(wm->connection, buf, len + 2);
   return 1;
}
