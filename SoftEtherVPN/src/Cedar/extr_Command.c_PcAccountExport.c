
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int bom ;
typedef int args ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_26__ {int* Buf; int Size; } ;
struct TYPE_25__ {int (* Write ) (TYPE_5__*,int ) ;} ;
struct TYPE_24__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_23__ {int RemoteClient; } ;
struct TYPE_22__ {int StartupAccount; int ServerCert; int ClientOption; int ClientAuth; int CheckServerCert; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef TYPE_5__ CONSOLE ;
typedef TYPE_6__ BUF ;


 scalar_t__ CalcUniToUtf8 (int ) ;
 scalar_t__ CcGetAccount (int ,TYPE_1__*) ;
 TYPE_6__* CiAccountToCfg (TYPE_1__*) ;
 int CiFreeClientGetAccount (TYPE_1__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 int DumpBuf (TYPE_6__*,char*) ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int*) ;
 int FreeBuf (TYPE_6__*) ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int MAX_SIZE ;
 TYPE_6__* NewBuf () ;
 int * ParseCommandList (TYPE_5__*,char*,int *,TYPE_4__*,int) ;
 int SeekBuf (TYPE_6__*,int ,int ) ;
 int StrCpy (char*,int,int ) ;
 int StrLen (char*) ;
 int UniStrCpy (int ,int,int ) ;
 int UniToUtf8 (int*,scalar_t__,int ) ;
 int WriteBuf (TYPE_6__*,int*,int) ;
 int Zero (TYPE_1__*,int) ;
 int* ZeroMalloc (scalar_t__) ;
 int _UU (char*) ;
 int stub1 (TYPE_5__*,int ) ;

UINT PcAccountExport(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"SAVEPATH", CmdPrompt, _UU("CMD_AccountExport_PROMPT_SAVEPATH"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 UniStrCpy(t.AccountName, sizeof(t.AccountName), GetParamUniStr(o, "[name]"));

 ret = CcGetAccount(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  RPC_CLIENT_CREATE_ACCOUNT z;
  BUF *b;
  BUF *b2;
  char tmp[MAX_SIZE];
  UCHAR *buf;
  UINT buf_size;
  UCHAR bom[] = {0xef, 0xbb, 0xbf, };

  Zero(&z, sizeof(z));
  z.CheckServerCert = t.CheckServerCert;
  z.ClientAuth = t.ClientAuth;
  z.ClientOption = t.ClientOption;
  z.ServerCert = t.ServerCert;
  z.StartupAccount = t.StartupAccount;

  b = CiAccountToCfg(&z);

  StrCpy(tmp, sizeof(tmp), GetParamStr(o, "SAVEPATH"));
  b2 = NewBuf();

  WriteBuf(b2, bom, sizeof(bom));


  buf_size = CalcUniToUtf8(_UU("CM_ACCOUNT_FILE_BANNER"));
  buf = ZeroMalloc(buf_size + 32);
  UniToUtf8(buf, buf_size, _UU("CM_ACCOUNT_FILE_BANNER"));

  WriteBuf(b2, buf, StrLen((char *)buf));
  WriteBuf(b2, b->Buf, b->Size);
  SeekBuf(b2, 0, 0);

  FreeBuf(b);

  if (DumpBuf(b2, tmp) == 0)
  {
   c->Write(c, _UU("CMD_SAVEFILE_FAILED"));
   ret = ERR_INTERNAL_ERROR;
  }

  FreeBuf(b2);
  Free(buf);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
