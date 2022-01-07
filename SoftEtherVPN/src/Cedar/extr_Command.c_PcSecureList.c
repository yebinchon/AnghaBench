
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp4 ;
typedef int tmp2 ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {scalar_t__ Type; int Manufacturer; int DeviceName; int DeviceId; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_SECURE ;
typedef TYPE_3__ PC ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 scalar_t__ CcEnumSecure (int ,TYPE_2__*) ;
 int CiFreeClientEnumSecure (TYPE_2__*) ;
 int CmdPrintError (int *,scalar_t__) ;
 int CtFreeEx (int *,int *,int) ;
 int CtInsert (int *,int *,int *,int *,int *) ;
 int CtInsertColumn (int *,int *,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ SECURE_IC_CARD ;
 int StrToUni (int *,int,int ) ;
 int UniToStru (int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 int * _UU (char*) ;

UINT PcSecureList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PC *pc = (PC *)param;
 UINT ret = ERR_NO_ERROR;
 RPC_CLIENT_ENUM_SECURE t;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&t, sizeof(t));

 ret = CcEnumSecure(pc->RemoteClient, &t);

 if (ret == ERR_NO_ERROR)
 {
  CT *ct;
  UINT i;
  wchar_t tmp1[MAX_SIZE];
  wchar_t tmp2[MAX_SIZE];
  wchar_t tmp4[MAX_SIZE];
  wchar_t *tmp3;


  ct = CtNew();
  CtInsertColumn(ct, _UU("SEC_COLUMN1"), 0);
  CtInsertColumn(ct, _UU("SEC_COLUMN2"), 0);
  CtInsertColumn(ct, _UU("SEC_COLUMN3"), 0);
  CtInsertColumn(ct, _UU("SEC_COLUMN4"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_CLIENT_ENUM_SECURE_ITEM *e = t.Items[i];


   UniToStru(tmp1, e->DeviceId);


   StrToUni(tmp2, sizeof(tmp2), e->DeviceName);


   tmp3 = (e->Type == SECURE_IC_CARD) ? _UU("SEC_SMART_CARD") : _UU("SEC_USB_TOKEN");


   StrToUni(tmp4, sizeof(tmp4), e->Manufacturer);

   CtInsert(ct, tmp1, tmp2, tmp3, tmp4);
  }

  CtFreeEx(ct, c, 1);

  CiFreeClientEnumSecure(&t);
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
