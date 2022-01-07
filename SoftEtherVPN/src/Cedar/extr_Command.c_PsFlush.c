
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int sizestr ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_12__ {int Rpc; } ;
struct TYPE_11__ {scalar_t__ IntValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef TYPE_2__ PS ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,int *,int *,int ) ;
 scalar_t__ ScFlush (int ,TYPE_1__*) ;
 int ToStr3 (char*,int,int ) ;
 int UniFormat (int *,int,int *,char*) ;
 int Zero (TYPE_1__*,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int *) ;

UINT PsFlush(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (1)
 {
  RPC_TEST t;
  UINT ret;
  wchar_t tmp[MAX_SIZE];
  char sizestr[MAX_SIZE];

  c->Write(c, _UU("CMD_Flush_Msg1"));

  Zero(&t, sizeof(t));

  ret = ScFlush(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  ToStr3(sizestr, sizeof(sizestr), (UINT64)t.IntValue);
  UniFormat(tmp, sizeof(tmp), _UU("CMD_Flush_Msg2"), sizestr);
  c->Write(c, tmp);
 }

 FreeParamValueList(o);

 return 0;
}
