
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connect_wii_wiimote_t {int dummy; } ;


 int free (struct connect_wii_wiimote_t*) ;

__attribute__((used)) static void hidpad_wii_deinit(void *data)
{
   struct connect_wii_wiimote_t* device = (struct connect_wii_wiimote_t*)data;

   if (device)
      free(device);
}
