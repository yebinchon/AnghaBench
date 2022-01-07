
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetIntAndUpdateVideo (int *,int) ;
 int VIDEOMODE_vertical_area ;

int VIDEOMODE_SetVerticalArea(int value)
{
 return SetIntAndUpdateVideo(&VIDEOMODE_vertical_area, value);
}
