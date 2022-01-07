
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ UniIsEmptyStr (int *) ;
 scalar_t__ UniStrCmpi (int *,char*) ;
 scalar_t__ UniStrToIP32 (int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool CmdEvalIp(CONSOLE *c, wchar_t *str, void *param)
{

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (UniIsEmptyStr(str))
 {
  return 1;
 }

 if (UniStrToIP32(str) == 0 && UniStrCmpi(str, L"0.0.0.0") != 0)
 {
  wchar_t *msg = (param == ((void*)0)) ? _UU("CMD_IP_EVAL_FAILED") : (wchar_t *)param;
  c->Write(c, msg);
  return 0;
 }

 return 1;
}
