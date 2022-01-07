
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strcasecmp (char*,int ) ;
 int myargc ;
 int * myargv ;

int CheckParm (char *check)
{
 int i;

 for (i = 1;i<myargc;i++)
 {
  if ( !Q_strcasecmp(check, myargv[i]) )
   return i;
 }

 return 0;
}
