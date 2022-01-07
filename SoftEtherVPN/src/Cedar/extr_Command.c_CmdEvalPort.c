
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ CONSOLE ;


 int UniToInt (int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalPort(CONSOLE *c, wchar_t *str, void *param)
{
 UINT i;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 i = UniToInt(str);

 if (i >= 1 && i <= 65535)
 {
  return 1;
 }

 c->Write(c, _UU("CMD_EVAL_PORT"));

 return 0;
}
