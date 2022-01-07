
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutodetectHostAspect (double*,double*) ;
 int VIDEOMODE_SetHostAspect (double,double) ;

int VIDEOMODE_AutodetectHostAspect(void)
{
 double w, h;
 AutodetectHostAspect(&w, &h);
 return VIDEOMODE_SetHostAspect(w, h);
}
