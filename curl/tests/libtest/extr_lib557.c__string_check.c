
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int _string_check(int linenumber, char *buf, const char *buf2)
{
  if(strcmp(buf, buf2)) {

    printf("sprintf line %d failed:\nwe      '%s'\nsystem: '%s'\n",
           linenumber, buf, buf2);
    return 1;
  }
  return 0;
}
