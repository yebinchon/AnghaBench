
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,size_t,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static int _strlen_check(int linenumber, char *buf, size_t len)
{
  size_t buflen = strlen(buf);
  if(len != buflen) {

    printf("sprintf strlen:%d failed:\nwe '%zu'\nsystem: '%zu'\n",
           linenumber, buflen, len);
    return 1;
  }
  return 0;
}
