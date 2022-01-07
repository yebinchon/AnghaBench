
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DCIGETTEXT (char const*,char const*,char const*,int,unsigned long,int) ;

char *
DCNGETTEXT (const char *domainname,
     const char *msgid1, const char *msgid2, unsigned long int n,
     int category)
{
  return DCIGETTEXT (domainname, msgid1, msgid2, 1, n, category);
}
