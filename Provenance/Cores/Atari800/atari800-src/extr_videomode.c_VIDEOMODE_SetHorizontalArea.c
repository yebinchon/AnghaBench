
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetIntAndUpdateVideo (int *,int) ;
 int VIDEOMODE_horizontal_area ;

int VIDEOMODE_SetHorizontalArea(int value)
{
 return SetIntAndUpdateVideo(&VIDEOMODE_horizontal_area, value);
}
