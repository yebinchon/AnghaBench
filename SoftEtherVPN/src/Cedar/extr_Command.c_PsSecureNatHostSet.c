
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
struct TYPE_16__ {int Mask; int Ip; int MacAddress; int HubName; } ;
typedef TYPE_1__ VH_OPTION ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int Size; int Buf; } ;
struct TYPE_19__ {int (* Write ) (TYPE_4__*,int ) ;} ;
struct TYPE_18__ {char* member_0; int * member_4; int * member_3; int member_2; int member_1; } ;
struct TYPE_17__ {int Rpc; int * HubName; } ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef int LIST ;
typedef TYPE_4__ CONSOLE ;
typedef TYPE_5__ BUF ;


 int * CmdEvalIp ;
 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CmdPrompt ;
 int Copy (int ,int ,int) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeBuf (TYPE_5__*) ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int IsEmptyStr (char*) ;
 int IsIpStr4 (char*) ;
 int * ParseCommandList (TYPE_4__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ ScGetSecureNATOption (int ,TYPE_1__*) ;
 scalar_t__ ScSetSecureNATOption (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 TYPE_5__* StrToBin (char*) ;
 int StrToIP (int *,char*) ;
 scalar_t__ StrToIP32 (char*) ;
 int UINTToIP (int *,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_4__*,int ) ;

UINT PsSecureNatHostSet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 VH_OPTION t;

 PARAM args[] =
 {

  {"MAC", CmdPrompt, _UU("CMD_SecureNatHostSet_Prompt_MAC"), ((void*)0), ((void*)0)},
  {"IP", CmdPrompt, _UU("CMD_SecureNatHostSet_Prompt_IP"), CmdEvalIp, ((void*)0)},
  {"MASK", CmdPrompt, _UU("CMD_SecureNatHostSet_Prompt_MASK"), CmdEvalIp, ((void*)0)},
 };


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScGetSecureNATOption(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  char *mac, *ip, *mask;
  bool ok = 1;

  StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);

  mac = GetParamStr(o, "MAC");
  ip = GetParamStr(o, "IP");
  mask = GetParamStr(o, "MASK");

  if (IsEmptyStr(mac) == 0)
  {
   BUF *b = StrToBin(mac);

   if (b == ((void*)0) || b->Size != 6)
   {
    ok = 0;
   }
   else
   {
    Copy(t.MacAddress, b->Buf, 6);
   }

   FreeBuf(b);
  }

  if (IsEmptyStr(ip) == 0)
  {
   if (IsIpStr4(ip) == 0)
   {
    ok = 0;
   }
   else
   {
    UINT u = StrToIP32(ip);

    if (u == 0 || u == 0xffffffff)
    {
     ok = 0;
    }
    else
    {
     UINTToIP(&t.Ip, u);
    }
   }
  }

  if (IsEmptyStr(mask) == 0)
  {
   if (IsIpStr4(mask) == 0)
   {
    ok = 0;
   }
   else
   {
    StrToIP(&t.Mask, mask);
   }
  }

  if (ok == 0)
  {

   ret = ERR_INVALID_PARAMETER;
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
  else
  {
   ret = ScSetSecureNATOption(ps->Rpc, &t);

   if (ret != ERR_NO_ERROR)
   {

    CmdPrintError(c, ret);
    FreeParamValueList(o);
    return ret;
   }
  }
 }

 FreeParamValueList(o);

 return 0;
}
