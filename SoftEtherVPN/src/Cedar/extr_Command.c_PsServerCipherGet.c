
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_21__ {int Rpc; } ;
struct TYPE_20__ {int String; } ;
struct TYPE_19__ {scalar_t__ NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ RPC_STR ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcStr (TYPE_2__*) ;
 int FreeToken (TYPE_1__*) ;
 int * ParseCommandList (TYPE_4__*,char*,char*,int *,int ) ;
 TYPE_1__* ParseToken (int ,char*) ;
 scalar_t__ ScGetServerCipher (int ,TYPE_2__*) ;
 scalar_t__ ScGetServerCipherList (int ,TYPE_2__*) ;
 int UniFormat (char*,int,char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;
 int stub3 (TYPE_4__*,char*) ;
 int stub4 (TYPE_4__*,char*) ;
 int stub5 (TYPE_4__*,char*) ;

UINT PsServerCipherGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_STR t;
 TOKEN_LIST *ciphers;
 UINT i;
 wchar_t tmp[4096];

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetServerCipher(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 UniFormat(tmp, sizeof(tmp), L" %S", t.String);
 FreeRpcStr(&t);
 Zero(&t, sizeof(RPC_STR));

 c->Write(c, _UU("CMD_ServerCipherGet_SERVER"));
 c->Write(c, tmp);

 ret = ScGetServerCipherList(ps->Rpc, &t);

 if (ret == ERR_NO_ERROR)
 {
  ciphers = ParseToken(t.String, ";");

  FreeRpcStr(&t);

  c->Write(c, L"");
  c->Write(c, _UU("CMD_ServerCipherGet_CIPHERS"));

  for (i = 0; i < ciphers->NumTokens; i++)
  {
   UniFormat(tmp, sizeof(tmp), L" %S", ciphers->Token[i]);
   c->Write(c, tmp);
  }

  FreeToken(ciphers);
 }

 FreeParamValueList(o);

 return 0;
}
