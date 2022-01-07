
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 int UniIsEmptyStr (int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool CmdEvalNotEmpty(CONSOLE *c, wchar_t *str, void *param)
{
 wchar_t *p = (param == ((void*)0)) ? _UU("CMD_EVAL_NOT_EMPTY") : (wchar_t *)param;

 if (UniIsEmptyStr(str) == 0)
 {
  return 1;
 }

 c->Write(c, p);

 return 0;
}
