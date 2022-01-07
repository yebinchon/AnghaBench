
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT64 ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ INFINITE ;
 int MAX_SIZE ;
 scalar_t__ StrToDateTime64 (char*) ;
 int UniToStr (char*,int,int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalDateTime(CONSOLE *c, wchar_t *str, void *param)
{
 UINT64 ret;
 char tmp[MAX_SIZE];

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), str);

 ret = StrToDateTime64(tmp);

 if (ret == INFINITE)
 {
  c->Write(c, _UU("CMD_EVAL_DATE_TIME_FAILED"));
  return 0;
 }

 return 1;
}
