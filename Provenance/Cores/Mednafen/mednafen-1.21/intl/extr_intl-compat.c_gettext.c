
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_gettext (char const*) ;

char *
gettext (const char *msgid)
{
  return libintl_gettext (msgid);
}
