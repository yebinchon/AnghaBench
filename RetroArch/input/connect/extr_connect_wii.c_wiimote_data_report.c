
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct connect_wii_wiimote_t {int dummy; } ;


 int WM_CMD_REPORT_TYPE ;
 int wiimote_is_connected (struct connect_wii_wiimote_t*) ;
 int wiimote_send (struct connect_wii_wiimote_t*,int ,int*,int) ;

__attribute__((used)) static void wiimote_data_report(struct connect_wii_wiimote_t* wm, uint8_t type)
{
   uint8_t buf[2] = {0x0,0x0};

   if (!wm || !wiimote_is_connected(wm))
      return;

   buf[1] = type;


   wiimote_send(wm, WM_CMD_REPORT_TYPE, buf, 2);
}
