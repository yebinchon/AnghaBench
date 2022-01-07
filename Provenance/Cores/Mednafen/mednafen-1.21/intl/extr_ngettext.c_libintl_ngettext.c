
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DCNGETTEXT (int *,char const*,char const*,unsigned long,int ) ;
 int LC_MESSAGES ;

char *
NGETTEXT (const char *msgid1, const char *msgid2, unsigned long int n)
{
  return DCNGETTEXT (((void*)0), msgid1, msgid2, n, LC_MESSAGES);
}
