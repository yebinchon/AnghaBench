
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int * strchr (char const*,char) ;

__attribute__((used)) static bool isBadFtpString(const char *string)
{
  return ((((void*)0) != strchr(string, '\r')) ||
          (((void*)0) != strchr(string, '\n'))) ? TRUE : FALSE;
}
