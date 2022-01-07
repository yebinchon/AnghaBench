
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int wchar_t ;
typedef int time ;
typedef int t ;
typedef int num2 ;
typedef int num1 ;
typedef int name ;
typedef int group ;
typedef int exp ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int (* Write ) (TYPE_7__*,int ) ;} ;
struct TYPE_21__ {int Rpc; int * HubName; } ;
struct TYPE_20__ {scalar_t__ NumUser; TYPE_4__* Users; int HubName; } ;
struct TYPE_17__ {scalar_t__ UnicastCount; scalar_t__ BroadcastBytes; scalar_t__ UnicastBytes; } ;
struct TYPE_16__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_18__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
struct TYPE_19__ {scalar_t__ LastLoginTime; int IsExpiresFilled; scalar_t__ Expires; int IsTrafficFilled; int AuthType; int Note; int Realname; TYPE_3__ Traffic; int NumLogin; int GroupName; int Name; } ;
typedef TYPE_4__ RPC_ENUM_USER_ITEM ;
typedef TYPE_5__ RPC_ENUM_USER ;
typedef TYPE_6__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_7__ CONSOLE ;


 int CmdPrintError (TYPE_7__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_7__*,int) ;
 int CtInsert (int *,int *,int ,int *,int ,int ,int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumUser (TYPE_5__*) ;
 int GetAuthTypeStr (int ) ;
 int GetDateTimeStrEx64 (int *,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_7__*,char*,int *,int *,int ) ;
 scalar_t__ ScEnumUser (int ,TYPE_5__*) ;
 int StrCpy (int ,int,int *) ;
 scalar_t__ StrLen (int ) ;
 int StrToUni (int *,int,int ) ;
 int SystemToLocal64 (scalar_t__) ;
 int UniStrCpy (int *,int,int ) ;
 int UniToStr3 (int *,int,scalar_t__) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_5__*,int) ;
 int _UU (char*) ;
 int stub1 (TYPE_7__*,int ) ;

UINT PsUserList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_USER t;


 if (ps->HubName == ((void*)0))
 {
  c->Write(c, _UU("CMD_Hub_Not_Selected"));
  return ERR_INVALID_PARAMETER;
 }

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 StrCpy(t.HubName, sizeof(t.HubName), ps->HubName);


 ret = ScEnumUser(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  CT *ct = CtNew();

  CtInsertColumn(ct, _UU("SM_USER_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_2"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_4"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_5"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_6"), 0);
  CtInsertColumn(ct, _UU("SM_USER_COLUMN_7"), 0);
  CtInsertColumn(ct, _UU("SM_LICENSE_COLUMN_5"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_6"), 0);
  CtInsertColumn(ct, _UU("SM_SESS_COLUMN_7"), 0);

  for (i = 0;i < t.NumUser;i++)
  {
   RPC_ENUM_USER_ITEM *e = &t.Users[i];
   wchar_t name[MAX_SIZE];
   wchar_t group[MAX_SIZE];
   wchar_t num[MAX_SIZE];
   wchar_t time[MAX_SIZE];
   wchar_t exp[MAX_SIZE];
   wchar_t num1[64], num2[64];

   StrToUni(name, sizeof(name), e->Name);

   if (StrLen(e->GroupName) != 0)
   {
    StrToUni(group, sizeof(group), e->GroupName);
   }
   else
   {
    UniStrCpy(group, sizeof(group), _UU("SM_NO_GROUP"));
   }

   UniToStru(num, e->NumLogin);

   GetDateTimeStrEx64(time, sizeof(time), SystemToLocal64(e->LastLoginTime), ((void*)0));

   if (e->IsExpiresFilled == 0)
   {
    UniStrCpy(exp, sizeof(exp), _UU("CM_ST_NONE"));
   }
   else
   {
    if (e->Expires == 0)
    {
     UniStrCpy(exp, sizeof(exp), _UU("SM_LICENSE_NO_EXPIRES"));
    }
    else
    {
     GetDateTimeStrEx64(exp, sizeof(exp), SystemToLocal64(e->Expires), ((void*)0));
    }
   }

   if (e->IsTrafficFilled == 0)
   {
    UniStrCpy(num1, sizeof(num1), _UU("CM_ST_NONE"));
    UniStrCpy(num2, sizeof(num2), _UU("CM_ST_NONE"));
   }
   else
   {
    UniToStr3(num1, sizeof(num1),
     e->Traffic.Recv.BroadcastBytes + e->Traffic.Recv.UnicastBytes +
     e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastBytes);

    UniToStr3(num2, sizeof(num2),
     e->Traffic.Recv.BroadcastCount + e->Traffic.Recv.UnicastCount +
     e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastCount);
   }

   CtInsert(ct,
    name, e->Realname, group, e->Note, GetAuthTypeStr(e->AuthType),
    num, time, exp, num1, num2);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumUser(&t);

 FreeParamValueList(o);

 return 0;
}
