
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 unsigned int VIDEOMODE_MAX_VERTICAL_AREA ;
 unsigned int VIDEOMODE_MIN_VERTICAL_AREA ;
 int VIDEOMODE_Update () ;
 unsigned int VIDEOMODE_VERTICAL_CUSTOM ;
 unsigned int VIDEOMODE_custom_vertical_area ;
 unsigned int VIDEOMODE_vertical_area ;

int VIDEOMODE_SetCustomVerticalArea(unsigned int value)
{
 unsigned int old_value = VIDEOMODE_custom_vertical_area;
 unsigned int old_area = VIDEOMODE_vertical_area;
 if (value < VIDEOMODE_MIN_VERTICAL_AREA)
  return FALSE;
 if (value > VIDEOMODE_MAX_VERTICAL_AREA)
  value = VIDEOMODE_MAX_VERTICAL_AREA;
 if (value != VIDEOMODE_custom_vertical_area || VIDEOMODE_vertical_area != VIDEOMODE_VERTICAL_CUSTOM) {
  VIDEOMODE_custom_vertical_area = value;
  VIDEOMODE_vertical_area = VIDEOMODE_VERTICAL_CUSTOM;
  if (!VIDEOMODE_Update()) {
   VIDEOMODE_custom_vertical_area = old_value;
   VIDEOMODE_vertical_area = old_area;
   return FALSE;
  }
 }
 return TRUE;
}
