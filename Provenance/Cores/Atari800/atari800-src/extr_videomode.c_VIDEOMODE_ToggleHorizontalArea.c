
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_HORIZONTAL_SIZE ;
 int VIDEOMODE_SetHorizontalArea (int) ;
 int VIDEOMODE_horizontal_area ;

int VIDEOMODE_ToggleHorizontalArea(void)
{
 return VIDEOMODE_SetHorizontalArea((VIDEOMODE_horizontal_area + 1) % VIDEOMODE_HORIZONTAL_SIZE);
}
