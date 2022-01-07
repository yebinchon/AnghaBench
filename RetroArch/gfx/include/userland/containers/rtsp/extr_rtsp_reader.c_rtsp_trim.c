
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;
 int strlen (char*) ;

__attribute__((used)) static char *rtsp_trim( char *str )
{
   char *trim = str + strlen(str);


   while (--trim >= str && isspace((int)*trim))
      ;
   trim[1] = '\0';


   trim = str;
   while (isspace((int)*trim))
      trim++;

   return trim;
}
