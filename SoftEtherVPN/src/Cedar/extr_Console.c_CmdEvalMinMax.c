
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {char* StrName; scalar_t__ MinValue; scalar_t__ MaxValue; } ;
struct TYPE_5__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;
typedef TYPE_2__ CMD_EVAL_MIN_MAX ;


 int MAX_SIZE ;
 int UniFormat (int *,int,int *,scalar_t__,scalar_t__) ;
 scalar_t__ UniToInt (int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

bool CmdEvalMinMax(CONSOLE *c, wchar_t *str, void *param)
{
 CMD_EVAL_MIN_MAX *e;
 wchar_t *tag;
 UINT v;

 if (param == ((void*)0))
 {
  return 0;
 }

 e = (CMD_EVAL_MIN_MAX *)param;

 if (e->StrName == ((void*)0))
 {
  tag = _UU("CMD_EVAL_MIN_MAX");
 }
 else
 {
  tag = _UU(e->StrName);
 }

 v = UniToInt(str);

 if (v >= e->MinValue && v <= e->MaxValue)
 {
  return 1;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];

  UniFormat(tmp, sizeof(tmp), tag, e->MinValue, e->MaxValue);
  c->Write(c, tmp);

  return 0;
 }
}
