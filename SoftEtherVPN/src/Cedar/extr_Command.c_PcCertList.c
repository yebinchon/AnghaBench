
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {char* SubjectName; char* IssuerName; int Key; int Expires; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_CA ;
typedef TYPE_3__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcEnumCa (int ,TYPE_2__*) ;
 int CiFreeClientEnumCa (TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,char*,char*) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int GetDateStrEx64 (char*,int,int ,int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,char*,int *,int ) ;
 int SystemToLocal64 (int ) ;
 int UniToStru (char*,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;

UINT PcCertList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_ENUM_CA t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcEnumCa(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {

  UINT i;
  CT *ct = CtNewStandard();

  for (i = 0;i < t.NumItem;i++)
  {
   wchar_t tmp[MAX_SIZE];
   wchar_t tmp2[64];
   RPC_CLIENT_ENUM_CA_ITEM *e = t.Items[i];

   GetDateStrEx64(tmp, sizeof(tmp), SystemToLocal64(e->Expires), ((void*)0));

   UniToStru(tmp2, e->Key);

   CtInsert(ct, _UU("CMD_CAList_COLUMN_ID"), tmp2);
   CtInsert(ct, _UU("CM_CERT_COLUMN_1"), e->SubjectName);
   CtInsert(ct, _UU("CM_CERT_COLUMN_2"), e->IssuerName);
   CtInsert(ct, _UU("CM_CERT_COLUMN_3"), tmp);

   if (i != (t.NumItem - 1))
   {
    CtInsert(ct, L"---", L"---");
   }
  }

  CtFree(ct, c);

  CiFreeClientEnumCa(&t);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }



 FreeParamValueList(o);

 return ret;
}
