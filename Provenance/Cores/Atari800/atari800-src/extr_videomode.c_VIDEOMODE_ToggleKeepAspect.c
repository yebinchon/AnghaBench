
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_KEEP_ASPECT_SIZE ;
 int VIDEOMODE_SetKeepAspect (int) ;
 int VIDEOMODE_keep_aspect ;

int VIDEOMODE_ToggleKeepAspect(void)
{
 return VIDEOMODE_SetKeepAspect((VIDEOMODE_keep_aspect + 1) % VIDEOMODE_KEEP_ASPECT_SIZE);
}
