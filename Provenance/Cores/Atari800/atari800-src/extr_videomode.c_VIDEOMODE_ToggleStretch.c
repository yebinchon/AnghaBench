
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_STRETCH_SIZE ;
 int VIDEOMODE_SetStretch (int) ;
 int VIDEOMODE_stretch ;

int VIDEOMODE_ToggleStretch(void)
{
 return VIDEOMODE_SetStretch((VIDEOMODE_stretch + 1) % VIDEOMODE_STRETCH_SIZE);
}
