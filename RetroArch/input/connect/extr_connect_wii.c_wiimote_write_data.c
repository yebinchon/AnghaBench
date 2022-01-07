
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct connect_wii_wiimote_t {int dummy; } ;
typedef int int32_t ;


 int WM_CMD_WRITE_DATA ;
 int memcpy (int*,int*,int) ;
 int printf (char*,...) ;
 int swap_if_little32 (int) ;
 int wiimote_is_connected (struct connect_wii_wiimote_t*) ;
 int wiimote_send (struct connect_wii_wiimote_t*,int ,int*,int) ;

__attribute__((used)) static int wiimote_write_data(struct connect_wii_wiimote_t* wm,
      uint32_t addr, uint8_t* data, uint8_t len)
{
   uint8_t buf[21] = {0};
   int32_t *buf32 = (int32_t*)buf;

   if (!wm || !wiimote_is_connected(wm))
      return 0;
   if (!data || !len)
      return 0;
   *buf32 = swap_if_little32(addr);


   *(uint8_t*)(buf + 4) = len;


   memcpy(buf + 5, data, len);

   wiimote_send(wm, WM_CMD_WRITE_DATA, buf, 21);
   return 1;
}
