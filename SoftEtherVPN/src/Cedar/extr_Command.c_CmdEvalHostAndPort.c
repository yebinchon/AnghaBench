
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int ParseHostPort (char*,int *,int *,int ) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool CmdEvalHostAndPort(CONSOLE *c, wchar_t *str, void *param)
{
 char *tmp;
 bool ret = 0;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 tmp = CopyUniToStr(str);

 ret = ParseHostPort(tmp, ((void*)0), ((void*)0), (UINT)param);

 if (ret == 0)
 {
  c->Write(c, param == ((void*)0) ? _UU("CMD_HOSTPORT_EVAL_FAILED") : (wchar_t *)param);
 }

 Free(tmp);

 return ret;
}
