
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int Rpc; } ;
struct TYPE_7__ {scalar_t__ OsServicePack; int KernelVersion; int KernelName; int OsVersion; int OsVendorName; int OsProductName; int OsSystemName; } ;
struct TYPE_8__ {TYPE_1__ OsInfo; int ServerType; int ServerHostName; int ServerBuildInfoString; int ServerVersionString; int ServerProductName; } ;
typedef TYPE_2__ RPC_SERVER_INFO ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;


 int CmdPrintError (int *,scalar_t__) ;
 int CtFree (int *,int *) ;
 int CtInsert (int *,int ,int *) ;
 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcServerInfo (TYPE_2__*) ;
 int * GetServerTypeStr (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 scalar_t__ ScGetServerInfo (int ,TYPE_2__*) ;
 int StrToUni (int *,int,int ) ;
 int UniFormat (int *,int,int ,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 int _UU (char*) ;

UINT PsServerInfoGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret;
 RPC_SERVER_INFO t;
 CT *ct;
 wchar_t tmp[MAX_SIZE];

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));
 ret = ScGetServerInfo(ps->Rpc, &t);
 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }

 ct = CtNew();

 CtInsertColumn(ct, _UU("SM_STATUS_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("SM_STATUS_COLUMN_2"), 0);


 StrToUni(tmp, sizeof(tmp), t.ServerProductName);
 CtInsert(ct, _UU("SM_INFO_PRODUCT_NAME"), tmp);


 StrToUni(tmp, sizeof(tmp), t.ServerVersionString);
 CtInsert(ct, _UU("SM_INFO_VERSION"), tmp);


 StrToUni(tmp, sizeof(tmp), t.ServerBuildInfoString);
 CtInsert(ct, _UU("SM_INFO_BUILD"), tmp);


 StrToUni(tmp, sizeof(tmp), t.ServerHostName);
 CtInsert(ct, _UU("SM_INFO_HOSTNAME"), tmp);


 CtInsert(ct, _UU("SM_ST_SERVER_TYPE"), GetServerTypeStr(t.ServerType));


 StrToUni(tmp, sizeof(tmp), t.OsInfo.OsSystemName);
 CtInsert(ct, _UU("SM_OS_SYSTEM_NAME"), tmp);

 StrToUni(tmp, sizeof(tmp), t.OsInfo.OsProductName);
 CtInsert(ct, _UU("SM_OS_PRODUCT_NAME"), tmp);

 if (t.OsInfo.OsServicePack != 0)
 {
  UniFormat(tmp, sizeof(tmp), _UU("SM_OS_SP_TAG"), t.OsInfo.OsServicePack);
  CtInsert(ct, _UU("SM_OS_SERVICE_PACK"), tmp);
 }

 StrToUni(tmp, sizeof(tmp), t.OsInfo.OsVendorName);
 CtInsert(ct, _UU("SM_OS_VENDER_NAME"), tmp);

 StrToUni(tmp, sizeof(tmp), t.OsInfo.OsVersion);
 CtInsert(ct, _UU("SM_OS_VERSION"), tmp);

 StrToUni(tmp, sizeof(tmp), t.OsInfo.KernelName);
 CtInsert(ct, _UU("SM_OS_KERNEL_NAME"), tmp);

 StrToUni(tmp, sizeof(tmp), t.OsInfo.KernelVersion);
 CtInsert(ct, _UU("SM_OS_KERNEL_VERSION"), tmp);

 CtFree(ct, c);

 FreeRpcServerInfo(&t);

 FreeParamValueList(o);

 return 0;
}
