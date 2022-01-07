
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ UniToInt (int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool CmdEvalInt1(CONSOLE *c, wchar_t *str, void *param)
{
 wchar_t *p = (param == ((void*)0)) ? _UU("CMD_EVAL_INT") : (wchar_t *)param;

 if (UniToInt(str) == 0)
 {
  c->Write(c, p);

  return 0;
 }

 return 1;
}
