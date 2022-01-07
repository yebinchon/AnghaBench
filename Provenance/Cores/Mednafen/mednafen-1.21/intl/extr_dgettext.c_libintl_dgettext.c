
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DCGETTEXT (char const*,char const*,int ) ;
 int LC_MESSAGES ;

char *
DGETTEXT (const char *domainname, const char *msgid)
{
  return DCGETTEXT (domainname, msgid, LC_MESSAGES);
}
