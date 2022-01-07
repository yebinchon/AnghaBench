
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DCIGETTEXT (char const*,char const*,int *,int ,int ,int) ;

char *
DCGETTEXT (const char *domainname, const char *msgid, int category)
{
  return DCIGETTEXT (domainname, msgid, ((void*)0), 0, 0, category);
}
