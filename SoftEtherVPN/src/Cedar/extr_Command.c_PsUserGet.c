
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_28__ {char* RadiusUsername; } ;
struct TYPE_27__ {char* CommonName; TYPE_1__* Serial; } ;
struct TYPE_26__ {int * UserX; } ;
struct TYPE_25__ {int (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_24__ {char* member_0; char* member_2; int * member_4; int member_3; int member_1; } ;
struct TYPE_23__ {int Rpc; int * HubName; } ;
struct TYPE_22__ {char* HubName; char* Name; char* Realname; char* Note; char* GroupName; int AuthType; int * Policy; int NumLogin; int Traffic; int UpdatedTime; int CreatedTime; int * AuthData; int ExpireTime; } ;
struct TYPE_21__ {int size; int data; } ;
typedef TYPE_2__ RPC_SET_USER ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_5__ CONSOLE ;
typedef TYPE_6__ AUTHUSERCERT ;
typedef TYPE_7__ AUTHROOTCERT ;
typedef TYPE_8__ AUTHRADIUS ;






 int BinToStrEx (char*,int,int ,int) ;
 int CmdEvalNotEmpty ;
 int CmdInsertTrafficInfo (int *,int *) ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 int CmdPrompt ;
 int CtFree (int *,TYPE_5__*) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcSetUser (TYPE_2__*) ;
 int GetAllNameFromX (char*,int,int *) ;
 char* GetAuthTypeStr (int) ;
 int GetDateTimeStrEx64 (char*,int,int ,int *) ;
 int * GetParamStr (int *,char*) ;
 int IsEmptyStr (char*) ;
 int IsEmptyUniStr (char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_5__*,char*,char*,TYPE_4__*,int) ;
 int PrintPolicy (TYPE_5__*,int *,int) ;
 scalar_t__ ScGetUser (int ,TYPE_2__*) ;
 int StrCpy (char*,int,int *) ;
 int StrToUni (char*,int,char*) ;
 int SystemToLocal64 (int ) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_5__*,char*) ;
 int stub2 (TYPE_5__*,char*) ;
 int stub3 (TYPE_5__*,char*) ;

UINT PsUserGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_SET_USER t;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_UserCreate_Prompt_NAME"), CmdEvalNotEmpty, ((void*)0)},
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
 StrCpy(t.Name, sizeof(t.Name), GetParamStr(o, "[name]"));

 ret = ScGetUser(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t tmp[MAX_SIZE];
  CT *ct;


  ct = CtNewStandard();


  StrToUni(tmp, sizeof(tmp), t.Name);
  CtInsert(ct, _UU("CMD_UserGet_Column_Name"), tmp);


  CtInsert(ct, _UU("CMD_UserGet_Column_RealName"), t.Realname);


  CtInsert(ct, _UU("CMD_UserGet_Column_Note"), t.Note);


  if (IsEmptyStr(t.GroupName) == 0)
  {
   StrToUni(tmp, sizeof(tmp), t.GroupName);
   CtInsert(ct, _UU("CMD_UserGet_Column_Group"), tmp);
  }


  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.ExpireTime), ((void*)0));
  CtInsert(ct, _UU("CMD_UserGet_Column_Expires"), tmp);


  CtInsert(ct, _UU("CMD_UserGet_Column_AuthType"), GetAuthTypeStr(t.AuthType));

  switch (t.AuthType)
  {
  case 128:
   if (t.AuthData != ((void*)0))
   {
    AUTHUSERCERT *auc = (AUTHUSERCERT *)t.AuthData;

    if (auc != ((void*)0) && auc->UserX != ((void*)0))
    {

     GetAllNameFromX(tmp, sizeof(tmp), auc->UserX);
     CtInsert(ct, _UU("CMD_UserGet_Column_UserCert"), tmp);
    }
   }
   break;

  case 129:
   if (t.AuthData != ((void*)0))
   {
    AUTHROOTCERT *arc = (AUTHROOTCERT *)t.AuthData;

    if (IsEmptyUniStr(arc->CommonName) == 0)
    {

     CtInsert(ct, _UU("CMD_UserGet_Column_RootCert_CN"), arc->CommonName);
    }

    if (arc->Serial != ((void*)0) && arc->Serial->size >= 1)
    {
     char tmp2[MAX_SIZE];


     BinToStrEx(tmp2, sizeof(tmp2), arc->Serial->data, arc->Serial->size);
     StrToUni(tmp, sizeof(tmp), tmp2);
     CtInsert(ct, _UU("CMD_UserGet_Column_RootCert_SERIAL"), tmp);
    }
   }
   break;

  case 130:
  case 131:
   if (t.AuthData != ((void*)0))
   {
    AUTHRADIUS *ar = (AUTHRADIUS *)t.AuthData;


    if (IsEmptyUniStr(ar->RadiusUsername) == 0)
    {
     CtInsert(ct, _UU("CMD_UserGet_Column_RadiusAlias"), ar->RadiusUsername);
    }
   }
   break;
  }

  CtInsert(ct, L"---", L"---");

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.CreatedTime), ((void*)0));
  CtInsert(ct, _UU("SM_USERINFO_CREATE"), tmp);

  GetDateTimeStrEx64(tmp, sizeof(tmp), SystemToLocal64(t.UpdatedTime), ((void*)0));
  CtInsert(ct, _UU("SM_USERINFO_UPDATE"), tmp);

  CmdInsertTrafficInfo(ct, &t.Traffic);

  UniToStru(tmp, t.NumLogin);
  CtInsert(ct, _UU("SM_USERINFO_NUMLOGIN"), tmp);


  CtFree(ct, c);

  if (t.Policy != ((void*)0))
  {
   c->Write(c, L"");
   c->Write(c, _UU("CMD_UserGet_Policy"));
   PrintPolicy(c, t.Policy, 0);
  }
 }

 FreeRpcSetUser(&t);

 FreeParamValueList(o);

 return 0;
}
