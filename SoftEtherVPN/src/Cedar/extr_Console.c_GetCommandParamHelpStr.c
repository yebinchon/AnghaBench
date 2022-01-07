
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;


 int Format (char*,int,char*,char*,char*) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 int * _UU (char*) ;

void GetCommandParamHelpStr(char *command_name, char *param_name, wchar_t **description)
{
 char tmp[160];
 if (description == ((void*)0))
 {
  return;
 }

 Format(tmp, sizeof(tmp), "CMD_%s_%s", command_name, param_name);

 *description = _UU(tmp);

 if (UniIsEmptyStr(*description))
 {
  *description = _UU("CMD_UNKNOWN_PARAM");
 }
}
