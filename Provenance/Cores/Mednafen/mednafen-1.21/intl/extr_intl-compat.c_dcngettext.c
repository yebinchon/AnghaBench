
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* libintl_dcngettext (char const*,char const*,char const*,unsigned long,int) ;

char *
dcngettext (const char *domainname,
            const char *msgid1, const char *msgid2, unsigned long int n,
            int category)
{
  return libintl_dcngettext (domainname, msgid1, msgid2, n, category);
}
