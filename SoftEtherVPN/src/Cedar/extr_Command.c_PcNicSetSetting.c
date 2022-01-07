
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int mac_address ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int MacAddress; int DeviceName; } ;
typedef TYPE_1__ UCHAR ;
struct TYPE_16__ {int Size; int Buf; } ;
struct TYPE_15__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_14__ {int RemoteClient; } ;
typedef TYPE_1__ RPC_CLIENT_SET_VLAN ;
typedef TYPE_3__ PC ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CONSOLE ;
typedef TYPE_5__ BUF ;


 scalar_t__ CcSetVLan (int ,TYPE_1__*) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (int *,scalar_t__) ;
 int CmdPrompt ;
 int Copy (TYPE_1__*,int ,int) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeBuf (TYPE_5__*) ;
 int FreeParamValueList (int *) ;
 int GetParamStr (int *,char*) ;
 scalar_t__ IsZero (TYPE_1__*,int) ;
 int NormalizeMacAddress (int ,int,int ) ;
 int * ParseCommandList (int *,char*,int *,TYPE_4__*,int) ;
 int StrCpy (int ,int,int ) ;
 TYPE_5__* StrToBin (int ) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;

UINT PcNicSetSetting(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_SET_VLAN t;
 UCHAR mac_address[6];
 BUF *b;

 PARAM args[] =
 {
  {"[name]", CmdPrompt, _UU("CMD_NicCreate_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
  {"MAC", CmdPrompt, _UU("CMD_NicSetSetting_PROMPT_MAC"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(mac_address, sizeof(mac_address));
 b = StrToBin(GetParamStr(o, "MAC"));
 if (b != ((void*)0) && b->Size == 6)
 {
  Copy(mac_address, b->Buf, 6);
 }
 FreeBuf(b);

 if (IsZero(mac_address, 6))
 {

  FreeParamValueList(o);

  CmdPrintError(c, ERR_INVALID_PARAMETER);
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));
 StrCpy(t.DeviceName, sizeof(t.DeviceName), GetParamStr(o, "[name]"));
 NormalizeMacAddress(t.MacAddress, sizeof(t.MacAddress), GetParamStr(o, "MAC"));

 ret = CcSetVLan(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
