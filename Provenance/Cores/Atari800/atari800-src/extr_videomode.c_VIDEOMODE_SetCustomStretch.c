
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 unsigned int VIDEOMODE_STRETCH_CUSTOM ;
 int VIDEOMODE_Update () ;
 double VIDEOMODE_custom_stretch ;
 unsigned int VIDEOMODE_stretch ;

int VIDEOMODE_SetCustomStretch(double value)
{
 double old_value = VIDEOMODE_custom_stretch;
 unsigned int old_stretch = VIDEOMODE_stretch;
 if (value < 1.0)
  return FALSE;
 if (value != VIDEOMODE_custom_stretch || VIDEOMODE_stretch != VIDEOMODE_STRETCH_CUSTOM) {
  VIDEOMODE_custom_stretch = value;
  VIDEOMODE_stretch = VIDEOMODE_STRETCH_CUSTOM;
  if (!VIDEOMODE_Update()) {
   VIDEOMODE_custom_stretch = old_value;
   VIDEOMODE_stretch = old_stretch;
   return FALSE;
  }
 }
 return TRUE;
}
