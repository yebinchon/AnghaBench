
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_SetVerticalArea (int) ;
 int VIDEOMODE_VERTICAL_SIZE ;
 int VIDEOMODE_vertical_area ;

int VIDEOMODE_ToggleVerticalArea(void)
{
 return VIDEOMODE_SetVerticalArea((VIDEOMODE_vertical_area + 1) % VIDEOMODE_VERTICAL_SIZE);
}
