
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ INFINITE ;
 scalar_t__ StrToProtocol (char*) ;
 int UniToStr (char*,int,int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalProtocol(CONSOLE *c, wchar_t *str, void *param)
{
 char tmp[64];

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), str);

 if (StrToProtocol(tmp) == INFINITE)
 {
  c->Write(c, _UU("CMD_PROTOCOL_EVAL_FAILED"));
  return 0;
 }

 return 1;
}
