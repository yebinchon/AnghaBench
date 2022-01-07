
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connect_wii_wiimote_t {int dummy; } ;


 int WIIMOTE_IS_SET (struct connect_wii_wiimote_t*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;

__attribute__((used)) static bool wiimote_is_connected(struct connect_wii_wiimote_t *wm)
{
   return WIIMOTE_IS_SET(wm, WIIMOTE_STATE_CONNECTED);
}
