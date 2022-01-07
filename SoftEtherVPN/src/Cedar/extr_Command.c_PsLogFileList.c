
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp4 ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int tmp ;
typedef int t ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_17__ {int Rpc; } ;
struct TYPE_16__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_15__ {char* FilePath; char* ServerName; int UpdatedTime; int FileSize; } ;
typedef TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef TYPE_3__ PS ;
typedef int LIST ;
typedef int CT ;
typedef TYPE_4__ CONSOLE ;


 int CmdPrintError (TYPE_4__*,scalar_t__) ;
 int CtFreeEx (int *,TYPE_4__*,int) ;
 int CtInsert (int *,char*,char*,char*,char*) ;
 int CtInsertColumn (int *,char*,int) ;
 int * CtNew () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeParamValueList (int *) ;
 int FreeRpcEnumLogFile (TYPE_2__*) ;
 int GetDateTimeStr64Uni (char*,int,int ) ;
 int MAX_HOST_NAME_LEN ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_4__*,char*,char*,int *,int ) ;
 scalar_t__ ScEnumLogFile (int ,TYPE_2__*) ;
 int StrToUni (char*,int,char*) ;
 int SystemToLocal64 (int ) ;
 int ToStrByte (char*,int,int ) ;
 int UniFormat (char*,int,char*,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_4__*,char*) ;
 int stub2 (TYPE_4__*,char*) ;
 int stub3 (TYPE_4__*,char*) ;

UINT PsLogFileList(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_ENUM_LOG_FILE t;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));

 c->Write(c, _UU("CMD_LogFileList_START"));
 c->Write(c, L"");


 ret = ScEnumLogFile(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  UINT i;
  wchar_t tmp[MAX_SIZE];
  CT *ct;

  UniFormat(tmp, sizeof(tmp), _UU("CMD_LogFileList_NUM_LOGS"), t.NumItem);
  c->Write(c, tmp);

  ct = CtNew();

  CtInsertColumn(ct, _UU("SM_LOG_FILE_COLUMN_1"), 0);
  CtInsertColumn(ct, _UU("SM_LOG_FILE_COLUMN_2"), 1);
  CtInsertColumn(ct, _UU("SM_LOG_FILE_COLUMN_3"), 0);
  CtInsertColumn(ct, _UU("SM_LOG_FILE_COLUMN_4"), 0);

  for (i = 0;i < t.NumItem;i++)
  {
   RPC_ENUM_LOG_FILE_ITEM *e = &t.Items[i];
   wchar_t tmp1[MAX_PATH], tmp2[128], tmp3[128], tmp4[MAX_HOST_NAME_LEN + 1];
   char tmp[MAX_SIZE];

   StrToUni(tmp1, sizeof(tmp1), e->FilePath);

   ToStrByte(tmp, sizeof(tmp), e->FileSize);
   StrToUni(tmp2, sizeof(tmp2), tmp);

   GetDateTimeStr64Uni(tmp3, sizeof(tmp3), SystemToLocal64(e->UpdatedTime));

   StrToUni(tmp4, sizeof(tmp4), e->ServerName);

   CtInsert(ct, tmp1, tmp2, tmp3, tmp4);
  }

  CtFreeEx(ct, c, 1);
 }

 FreeRpcEnumLogFile(&t);

 FreeParamValueList(o);

 return 0;
}
