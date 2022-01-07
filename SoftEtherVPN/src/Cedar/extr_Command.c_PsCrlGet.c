
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int str ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int (* Write ) (TYPE_7__*,int ) ;} ;
struct TYPE_22__ {int DigestSHA1; int DigestMD5; TYPE_1__* Serial; TYPE_5__* Name; } ;
struct TYPE_21__ {int * Local; int * State; int * Country; int * Unit; int * Organization; int * CommonName; } ;
struct TYPE_20__ {char* member_0; int * member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_19__ {int Rpc; int * HubName; } ;
struct TYPE_18__ {TYPE_6__* Crl; int Key; int HubName; } ;
struct TYPE_17__ {int size; int data; } ;
typedef TYPE_2__ RPC_CRL ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef TYPE_5__ NAME ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_6__ CRL ;
typedef TYPE_7__ CONSOLE ;


 int BinToStrEx (char*,int,int ,int) ;
 int CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_7__*,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,TYPE_7__*) ;
 int CtInsert (int *,int ,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcCrl (TYPE_2__*) ;
 int GetParamInt (int *,char*) ;
 int IsZero (int ,int) ;
 int MAX_SIZE ;
 int MD5_SIZE ;
 int * ParseCommandList (TYPE_7__*,char*,int *,TYPE_4__*,int) ;
 int SHA1_SIZE ;
 scalar_t__ ScGetCrl (int ,TYPE_2__*) ;
 int StrCpy (int ,int,int *) ;
 int StrToUni (int *,int,char*) ;
 int UniIsEmptyStr (int *) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_7__*,int ) ;

UINT PsCrlGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CRL t;

 PARAM args[] =
 {

  {"[id]", CmdPrompt, _UU("CMD_CrlGet_Prompt_ID"), CmdEvalNotEmpty, ((void*)0)},
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
 t.Key = GetParamInt(o, "[id]");


 ret = ScGetCrl(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {

  CT *ct = CtNewStandard();
  CRL *crl = t.Crl;
  NAME *n;

  if (crl != ((void*)0))
  {
   n = crl->Name;

   if (n != ((void*)0))
   {
    if (UniIsEmptyStr(n->CommonName) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_CN"), n->CommonName);
    }
    if (UniIsEmptyStr(n->Organization) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_O"), n->Organization);
    }
    if (UniIsEmptyStr(n->Unit) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_OU"), n->Unit);
    }
    if (UniIsEmptyStr(n->Country) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_C"), n->Country);
    }
    if (UniIsEmptyStr(n->State) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_ST"), n->State);
    }
    if (UniIsEmptyStr(n->Local) == 0)
    {
     CtInsert(ct, _UU("CMD_CrlGet_L"), n->Local);
    }
   }

   if (crl->Serial != ((void*)0) && crl->Serial->size >= 1)
   {
    wchar_t tmp[MAX_SIZE];
    char str[MAX_SIZE];

    BinToStrEx(str, sizeof(str), crl->Serial->data, crl->Serial->size);
    StrToUni(tmp, sizeof(tmp), str);

    CtInsert(ct, _UU("CMD_CrlGet_SERI"), tmp);
   }

   if (IsZero(crl->DigestMD5, MD5_SIZE) == 0)
   {
    wchar_t tmp[MAX_SIZE];
    char str[MAX_SIZE];

    BinToStrEx(str, sizeof(str), crl->DigestMD5, MD5_SIZE);
    StrToUni(tmp, sizeof(tmp), str);

    CtInsert(ct, _UU("CMD_CrlGet_MD5_HASH"), tmp);
   }

   if (IsZero(crl->DigestSHA1, SHA1_SIZE) == 0)
   {
    wchar_t tmp[MAX_SIZE];
    char str[MAX_SIZE];

    BinToStrEx(str, sizeof(str), crl->DigestSHA1, SHA1_SIZE);
    StrToUni(tmp, sizeof(tmp), str);

    CtInsert(ct, _UU("CMD_CrlGet_SHA1_HASH"), tmp);
   }
  }
  CtFree(ct, c);
 }

 FreeRpcCrl(&t);

 FreeParamValueList(o);

 return 0;
}
