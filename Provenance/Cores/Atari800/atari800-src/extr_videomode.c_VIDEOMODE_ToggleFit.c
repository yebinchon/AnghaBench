
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_FIT_SIZE ;
 int VIDEOMODE_SetFit (int) ;
 int VIDEOMODE_fit ;

int VIDEOMODE_ToggleFit(void)
{
 return VIDEOMODE_SetFit((VIDEOMODE_fit + 1) % VIDEOMODE_FIT_SIZE);
}
