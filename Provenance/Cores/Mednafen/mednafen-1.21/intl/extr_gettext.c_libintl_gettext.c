
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DCGETTEXT (int *,char const*,int ) ;
 int LC_MESSAGES ;

char *
GETTEXT (const char *msgid)
{
  return DCGETTEXT (((void*)0), msgid, LC_MESSAGES);
}
