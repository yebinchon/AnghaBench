
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct connect_wii_wiimote_t {int dummy; } ;
typedef int int32_t ;
typedef int int16_t ;


 int WM_CMD_READ_DATA ;
 int printf (char*,int,int) ;
 int swap_if_little16 (int) ;
 int swap_if_little32 (int) ;
 int wiimote_is_connected (struct connect_wii_wiimote_t*) ;
 int wiimote_send (struct connect_wii_wiimote_t*,int ,int *,int) ;

__attribute__((used)) static int wiimote_read_data(struct connect_wii_wiimote_t* wm, uint32_t addr,
      uint16_t len)
{
   uint8_t buf[6] = {0};
   int32_t *buf32 = (int32_t*)buf;
   int16_t *buf16 = (int16_t*)(buf + 4);



   if (!wm || !wiimote_is_connected(wm) || !len)
      return 0;


   *buf32 = swap_if_little32(addr);
   *buf16 = swap_if_little16(len);




   wiimote_send(wm, WM_CMD_READ_DATA, buf, 6);

   return 1;
}
