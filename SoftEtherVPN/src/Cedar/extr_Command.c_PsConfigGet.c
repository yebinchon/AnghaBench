
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int args ;
struct TYPE_20__ {scalar_t__ NumTokens; char** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef scalar_t__ UINT ;
struct TYPE_24__ {int (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_23__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_22__ {int Rpc; } ;
struct TYPE_21__ {scalar_t__ FileData; int FileName; } ;
typedef TYPE_2__ RPC_CONFIG ;
typedef TYPE_3__ PS ;
typedef TYPE_4__ PARAM ;
typedef int LIST ;
typedef int IO ;
typedef TYPE_5__ CONSOLE ;
typedef int BYTE ;


 scalar_t__ CalcUtf8ToUni (int *,int ) ;
 int CmdPrintError (TYPE_5__*,scalar_t__) ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int FileClose (int *) ;
 int * FileCreateW (char*) ;
 int FileWrite (int *,scalar_t__,int ) ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 int FreeRpcConfig (TYPE_2__*) ;
 char* GetParamUniStr (int *,char*) ;
 scalar_t__ IsEmptyUniStr (char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_5__*,char*,char*,TYPE_4__*,int) ;
 scalar_t__ ScGetConfig (int ,TYPE_2__*) ;
 int StrLen (scalar_t__) ;
 int UniFormat (char*,int,char*,int ,int ) ;
 int UniFreeToken (TYPE_1__*) ;
 TYPE_1__* UniGetLines (char*) ;
 int Utf8ToUni (char*,scalar_t__,int *,int ) ;
 int Zero (TYPE_2__*,int) ;
 char* ZeroMalloc (scalar_t__) ;
 char* _UU (char*) ;
 int stub1 (TYPE_5__*,char*) ;
 int stub2 (TYPE_5__*,char*) ;
 int stub3 (TYPE_5__*,char*) ;
 int stub4 (TYPE_5__*,char*) ;
 int stub5 (TYPE_5__*,char*) ;

UINT PsConfigGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 RPC_CONFIG t;

 PARAM args[] =
 {

  {"[path]", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 Zero(&t, sizeof(t));


 ret = ScGetConfig(ps->Rpc, &t);

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
  FreeParamValueList(o);
  return ret;
 }
 else
 {
  wchar_t *filename = GetParamUniStr(o, "[path]");

  if (IsEmptyUniStr(filename))
  {

   wchar_t tmp[MAX_SIZE];
   UINT buf_size;
   wchar_t *buf;
   UNI_TOKEN_LIST *lines;

   UniFormat(tmp, sizeof(tmp), _UU("CMD_ConfigGet_FILENAME"), t.FileName,
    StrLen(t.FileData));
   c->Write(c, tmp);
   c->Write(c, L"");

   buf_size = CalcUtf8ToUni((BYTE *)t.FileData, StrLen(t.FileData));
   buf = ZeroMalloc(buf_size + 32);

   Utf8ToUni(buf, buf_size, (BYTE *)t.FileData, StrLen(t.FileData));

   lines = UniGetLines(buf);
   if (lines != ((void*)0))
   {
    UINT i;

    for (i = 0;i < lines->NumTokens;i++)
    {
     c->Write(c, lines->Token[i]);
    }

    UniFreeToken(lines);
   }

   c->Write(c, L"");

   Free(buf);
  }
  else
  {

   IO *io = FileCreateW(filename);

   if (io == ((void*)0))
   {
    c->Write(c, _UU("CMD_ConfigGet_FILE_SAVE_FAILED"));

    ret = ERR_INTERNAL_ERROR;
   }
   else
   {
    FileWrite(io, t.FileData, StrLen(t.FileData));
    FileClose(io);
   }
  }
 }

 FreeRpcConfig(&t);

 FreeParamValueList(o);

 return ret;
}
