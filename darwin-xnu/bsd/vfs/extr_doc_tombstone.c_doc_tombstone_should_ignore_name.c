
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

bool doc_tombstone_should_ignore_name(const char *nameptr, int len)
{
 if (len == 0) {
  len = strlen(nameptr);
 }

 if ( strncmp(nameptr, "atmp", 4) == 0
  || (len > 4 && strncmp(nameptr+len-4, ".bak", 4) == 0)
  || (len > 4 && strncmp(nameptr+len-4, ".tmp", 4) == 0)) {
  return 1;
 }

 return 0;
}
