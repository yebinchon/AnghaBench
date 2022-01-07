
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_SetRotate90 (int) ;
 int VIDEOMODE_rotate90 ;

int VIDEOMODE_ToggleRotate90(void)
{
 return VIDEOMODE_SetRotate90(!VIDEOMODE_rotate90);
}
