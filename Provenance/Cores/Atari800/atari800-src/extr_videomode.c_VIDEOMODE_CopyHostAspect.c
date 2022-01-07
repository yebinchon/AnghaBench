
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;
 int snprintf (char*,unsigned int,char*,double,double) ;

void VIDEOMODE_CopyHostAspect(char *target, unsigned int size)
{
 snprintf(target, size, "%g:%g", VIDEOMODE_host_aspect_ratio_w, VIDEOMODE_host_aspect_ratio_h);
}
