
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {scalar_t__ Size; int Buf; } ;
struct TYPE_19__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int Rpc; } ;
struct TYPE_16__ {int FileData; } ;
typedef TYPE_1__ RPC_CONFIG ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ BUF ;


 int CmdEvalIsFile ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 int Copy (int ,int ,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeBuf (TYPE_5__*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcConfig (TYPE_1__*) ;
 int * GetParamUniStr (int *,char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 TYPE_5__* ReadDumpW (int *) ;
 scalar_t__ ScSetConfig (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;
 int ZeroMalloc (scalar_t__) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsConfigSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CONFIG t;
 wchar_t *filename;
 BUF *buf;

 PARAM args[] =
 {

  {"[path]", CmdPrompt, _UU("CMD_ConfigSet_PROMPT_PATH"), CmdEvalIsFile, ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 filename = GetParamUniStr(o, "[path]");

 buf = ReadDumpW(filename);
 if (buf == ((void*)0))
 {
  c->Write(c, _UU("CMD_ConfigSet_FILE_LOAD_FAILED"));
 }
 else
 {
  Zero(&t, sizeof(t));

  t.FileData = ZeroMalloc(buf->Size + 1);
  Copy(t.FileData, buf->Buf, buf->Size);
  FreeBuf(buf);


  ret = ScSetConfig(ps->Rpc, &t);

  if (ret != ERR_NO_ERROR)
  {

   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }

  FreeRpcConfig(&t);
 }

 FreeParamValueList(o);

 return 0;
}
