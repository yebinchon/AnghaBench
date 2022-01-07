
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int ParseAspectRatio (char const*,double*,double*) ;
 int VIDEOMODE_SetHostAspect (double,double) ;

int VIDEOMODE_SetHostAspectString(char const *s)
{
 double w, h;
 if (!ParseAspectRatio(s, &w, &h))
  return FALSE;
 return VIDEOMODE_SetHostAspect(w, h);
}
