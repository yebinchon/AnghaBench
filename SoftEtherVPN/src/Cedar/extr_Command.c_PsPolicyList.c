
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int args ;
typedef int UINT ;
struct TYPE_3__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
typedef TYPE_1__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;


 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_1__*,int) ;
 int PrintPolicyList (int *,int ) ;

UINT PsPolicyList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PARAM args[] =
 {

  {"[name]", ((void*)0), ((void*)0), ((void*)0), ((void*)0)}
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 PrintPolicyList(c, GetParamStr(o, "[name]"));

 FreeParamValueList(o);

 return ERR_NO_ERROR;
}
