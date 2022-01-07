
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_dngettext (char const*,char const*,char const*,unsigned long) ;

char *
dngettext (const char *domainname,
           const char *msgid1, const char *msgid2, unsigned long int n)
{
  return libintl_dngettext (domainname, msgid1, msgid2, n);
}
