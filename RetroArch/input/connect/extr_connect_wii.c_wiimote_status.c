
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct connect_wii_wiimote_t {int dummy; } ;


 int WM_CMD_CTRL_STATUS ;
 int printf (char*) ;
 int wiimote_is_connected (struct connect_wii_wiimote_t*) ;
 int wiimote_send (struct connect_wii_wiimote_t*,int ,int *,int) ;

__attribute__((used)) static void wiimote_status(struct connect_wii_wiimote_t* wm)
{
   uint8_t buf = 0;

   if (!wm || !wiimote_is_connected(wm))
      return;





   wiimote_send(wm, WM_CMD_CTRL_STATUS, &buf, 1);
}
