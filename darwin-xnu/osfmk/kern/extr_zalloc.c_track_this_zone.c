
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 unsigned int MAX_ZONE_NAME ;
 int TRUE ;

int
track_this_zone(const char *zonename, const char *logname)
{
 unsigned int len;
 const char *zc = zonename;
 const char *lc = logname;





 for (len = 1; len <= MAX_ZONE_NAME; zc++, lc++, len++) {







  if (*zc != *lc && !(*zc == ' ' && *lc == '.'))
   break;





  if (*zc == '\0')
   return TRUE;
 }

 return FALSE;
}
