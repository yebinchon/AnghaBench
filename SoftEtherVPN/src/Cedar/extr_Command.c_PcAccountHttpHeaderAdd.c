
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int z ;
typedef int wchar_t ;
typedef int t ;
typedef int s ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int RemoteClient; } ;
struct TYPE_16__ {int StartupAccount; int ServerCert; TYPE_1__* ClientOption; int ClientAuth; int RetryOnServerCert; int CheckServerCert; int AccountName; } ;
struct TYPE_15__ {scalar_t__ NumTokens; int * Token; } ;
struct TYPE_14__ {char* CustomHttpHeader; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_5__ PC ;
typedef TYPE_6__ PARAM ;
typedef int LIST ;
typedef int HTTP_HEADER ;
typedef int CONSOLE ;


 int AddHttpValueStr (int *,int ) ;
 scalar_t__ CcGetAccount (int ,TYPE_3__*) ;
 scalar_t__ CcSetAccount (int ,TYPE_3__*) ;
 int CiFreeClientGetAccount (TYPE_3__*) ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_EXISTS ;
 scalar_t__ ERR_TOO_MANT_ITEMS ;
 int EnSafeHttpHeaderValueStr (char*,char) ;
 int Format (char*,int,char*,char*,char*) ;
 int FreeHttpHeader (int *) ;
 int FreeParamValueList (int *) ;
 int FreeToken (TYPE_2__*) ;
 int * GetHttpValue (int *,char*) ;
 char* GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int HTTP_CUSTOM_HEADER_MAX_SIZE ;
 int * NewHttpHeader (char*,char*,char*) ;
 int * ParseCommandList (int *,char*,int *,TYPE_6__*,int) ;
 TYPE_2__* ParseToken (char*,char*) ;
 int StrCat (char*,int,char*) ;
 int StrLen (char*) ;
 int Trim (char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Zero (TYPE_3__*,int) ;
 int _UU (char*) ;

UINT PcAccountHttpHeaderAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_GET_ACCOUNT t;


 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"NAME", CmdPrompt, _UU("CMD_AccountHttpHeader_Prompt_Name"), CmdEvalNotEmpty, ((void*)0)},
  {"DATA", CmdPrompt, _UU("CMD_AccountHttpHeader_Prompt_Data"), ((void*)0), ((void*)0)},
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
  UINT i = 0;
  TOKEN_LIST *tokens = ((void*)0);
  HTTP_HEADER *header = ((void*)0);
  char *name = GetParamStr(o, "NAME");

  Trim(name);

  header = NewHttpHeader("", "", "");

  tokens = ParseToken(t.ClientOption->CustomHttpHeader, "\r\n");
  for (i = 0; i < tokens->NumTokens; i++)
  {
   AddHttpValueStr(header, tokens->Token[i]);
  }
  FreeToken(tokens);

  if (GetHttpValue(header, name) == ((void*)0))
  {
   RPC_CLIENT_CREATE_ACCOUNT z;
   char s[HTTP_CUSTOM_HEADER_MAX_SIZE];

   Format(s, sizeof(s), "%s: %s\r\n", name, GetParamStr(o, "DATA"));
   EnSafeHttpHeaderValueStr(s, ' ');

   if ((StrLen(s) + StrLen(t.ClientOption->CustomHttpHeader)) < sizeof(t.ClientOption->CustomHttpHeader)) {
    StrCat(t.ClientOption->CustomHttpHeader, sizeof(s), s);

    Zero(&z, sizeof(z));
    z.CheckServerCert = t.CheckServerCert;
    z.RetryOnServerCert = t.RetryOnServerCert;
    z.ClientAuth = t.ClientAuth;
    z.ClientOption = t.ClientOption;
    z.ServerCert = t.ServerCert;
    z.StartupAccount = t.StartupAccount;

    ret = CcSetAccount(pc->RemoteClient, &z);
   }
   else
   {

    ret = ERR_TOO_MANT_ITEMS;
   }
  }
  else
  {

   ret = ERR_OBJECT_EXISTS;
  }

  FreeHttpHeader(header);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }

 CiFreeClientGetAccount(&t);


 FreeParamValueList(o);

 return ret;
}
