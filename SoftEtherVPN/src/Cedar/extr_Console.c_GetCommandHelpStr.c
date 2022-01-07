
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;


 int Format (char*,int,char*,char*) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 int * _UU (char*) ;

void GetCommandHelpStr(char *command_name, wchar_t **description, wchar_t **args, wchar_t **help)
{
 char tmp1[128], tmp2[128], tmp3[128];

 Format(tmp1, sizeof(tmp1), "CMD_%s", command_name);
 Format(tmp2, sizeof(tmp2), "CMD_%s_ARGS", command_name);
 Format(tmp3, sizeof(tmp3), "CMD_%s_HELP", command_name);

 if (description != ((void*)0))
 {
  *description = _UU(tmp1);
  if (UniIsEmptyStr(*description))
  {
   *description = _UU("CMD_UNKNOWM");
  }
 }

 if (args != ((void*)0))
 {
  *args = _UU(tmp2);
  if (UniIsEmptyStr(*args))
  {
   *args = _UU("CMD_UNKNOWN_ARGS");
  }
 }

 if (help != ((void*)0))
 {
  *help = _UU(tmp3);
  if (UniIsEmptyStr(*help))
  {
   *help = _UU("CMD_UNKNOWN_HELP");
  }
 }
}
