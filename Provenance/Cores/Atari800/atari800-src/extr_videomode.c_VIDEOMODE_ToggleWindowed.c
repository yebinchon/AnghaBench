
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_SetWindowed (int) ;
 int VIDEOMODE_windowed ;

int VIDEOMODE_ToggleWindowed(void)
{
 return VIDEOMODE_SetWindowed(!VIDEOMODE_windowed);
}
