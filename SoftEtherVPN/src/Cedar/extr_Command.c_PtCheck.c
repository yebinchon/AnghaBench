
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int LIST ;
typedef int CONSOLE ;


 int ERR_INTERNAL_ERROR ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 int SystemCheck () ;

UINT PtCheck(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 UINT ret = ERR_NO_ERROR;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (SystemCheck() == 0)
 {
  ret = ERR_INTERNAL_ERROR;
 }

 FreeParamValueList(o);

 return ret;
}
