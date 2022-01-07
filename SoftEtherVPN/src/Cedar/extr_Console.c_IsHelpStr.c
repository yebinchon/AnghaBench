
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ StrCmpi (char*,char*) ;

bool IsHelpStr(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 if (StrCmpi(str, "help") == 0 || StrCmpi(str, "?") == 0 ||
  StrCmpi(str, "man") == 0 || StrCmpi(str, "/man") == 0 ||
  StrCmpi(str, "-man") == 0 || StrCmpi(str, "--man") == 0 ||
  StrCmpi(str, "/help") == 0 || StrCmpi(str, "/?") == 0 ||
  StrCmpi(str, "-help") == 0 || StrCmpi(str, "-?") == 0 ||
  StrCmpi(str, "/h") == 0 || StrCmpi(str, "--help") == 0 ||
  StrCmpi(str, "--?") == 0)
 {
  return 1;
 }

 return 0;
}
