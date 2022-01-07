
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int wchar_t ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {int Size; int Buf; } ;
struct TYPE_23__ {int (* Write ) (TYPE_6__*,int ) ;} ;
struct TYPE_22__ {int DigestSHA1; int DigestMD5; int Serial; TYPE_4__* Name; } ;
struct TYPE_21__ {void* CommonName; } ;
struct TYPE_20__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_19__ {int Rpc; int * HubName; } ;
struct TYPE_18__ {TYPE_5__* Crl; int HubName; } ;
typedef TYPE_1__ RPC_CRL ;
typedef TYPE_2__ PS ;
typedef TYPE_3__ PARAM ;
typedef TYPE_4__ NAME ;
typedef int LIST ;
typedef TYPE_5__ CRL ;
typedef TYPE_6__ CONSOLE ;
typedef TYPE_7__ BUF ;


 int CmdPrintError (TYPE_6__*,scalar_t__) ;
 int Copy (int ,int ,scalar_t__) ;
 void* CopyUniStr (int ) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeBuf (TYPE_7__*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcCrl (TYPE_1__*) ;
 int GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int IsEmptyStr (int ) ;
 scalar_t__ MD5_SIZE ;
 int NewXSerial (int ,int) ;
 int * ParseCommandList (TYPE_6__*,char*,int *,TYPE_3__*,int) ;
 scalar_t__ SHA1_SIZE ;
 scalar_t__ ScAddCrl (int ,TYPE_1__*) ;
 int StrCpy (int ,int,int *) ;
 TYPE_7__* StrToBin (int ) ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (int) ;
 int _UU (char*) ;
 int stub1 (TYPE_6__*,int ) ;

UINT PsCrlAdd(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CRL t;

 PARAM args[] =
 {
  {"SERIAL", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"MD5", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"SHA1", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"CN", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"O", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"OU", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"C", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"ST", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"L", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
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

 {
  bool param_exists = 0;
  CRL *crl = ZeroMalloc(sizeof(CRL));
  NAME *n;
  n = crl->Name = ZeroMalloc(sizeof(NAME));

  if (IsEmptyStr(GetParamStr(o, "CN")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "CN"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "O")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "O"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "OU")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "OU"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "C")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "C"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "ST")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "ST"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "L")) == 0)
  {
   n->CommonName = CopyUniStr(GetParamUniStr(o, "L"));
   param_exists = 1;
  }

  if (IsEmptyStr(GetParamStr(o, "SERIAL")) == 0)
  {
   BUF *b;

   b = StrToBin(GetParamStr(o, "SERIAL"));

   if (b != ((void*)0) && b->Size >= 1)
   {
    crl->Serial = NewXSerial(b->Buf, b->Size);
    param_exists = 1;
   }

   FreeBuf(b);
  }

  if (IsEmptyStr(GetParamStr(o, "MD5")) == 0)
  {
   BUF *b;

   b = StrToBin(GetParamStr(o, "MD5"));

   if (b != ((void*)0) && b->Size == MD5_SIZE)
   {
    Copy(crl->DigestMD5, b->Buf, MD5_SIZE);
    param_exists = 1;
   }

   FreeBuf(b);
  }

  if (IsEmptyStr(GetParamStr(o, "SHA1")) == 0)
  {
   BUF *b;

   b = StrToBin(GetParamStr(o, "SHA1"));

   if (b != ((void*)0) && b->Size == SHA1_SIZE)
   {
    Copy(crl->DigestSHA1, b->Buf, SHA1_SIZE);
    param_exists = 1;
   }

   FreeBuf(b);
  }

  t.Crl = crl;

  if (param_exists == 0)
  {
   FreeRpcCrl(&t);
   ret = ERR_INVALID_PARAMETER;
   CmdPrintError(c, ret);
   FreeParamValueList(o);
   return ret;
  }
 }


 ret = ScAddCrl(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 FreeRpcCrl(&t);

 FreeParamValueList(o);

 return 0;
}
