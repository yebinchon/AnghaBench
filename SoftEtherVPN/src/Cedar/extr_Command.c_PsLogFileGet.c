
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_21__ {int Size; scalar_t__ Buf; } ;
struct TYPE_20__ {int (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_19__ {char* member_0; char* member_2; int * member_4; int * member_3; int * member_1; } ;
struct TYPE_18__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;
typedef int BYTE ;
typedef TYPE_4__ BUF ;


 scalar_t__ CalcUtf8ToUni (int *,int ) ;
 int * CmdEvalNotEmpty ;
 int * CmdPrompt ;
 TYPE_4__* DownloadFileFromServer (int ,char*,char*,int ,int *,int *) ;
 int DumpBuf (TYPE_4__*,char*) ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 int Free (char*) ;
 int FreeBuf (TYPE_4__*) ;
 int FreeParamValueList (int *) ;
 char* GetParamStr (int *,char*) ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int * ParseCommandList (TYPE_3__*,char*,char*,TYPE_2__*,int) ;
 int UniFormat (char*,int,char*,int ) ;
 int Utf8ToUni (char*,scalar_t__,int *,int ) ;
 char* ZeroMalloc (scalar_t__) ;
 char* _UU (char*) ;
 int stub1 (TYPE_3__*,char*) ;
 int stub2 (TYPE_3__*,char*) ;
 int stub3 (TYPE_3__*,char*) ;
 int stub4 (TYPE_3__*,char*) ;
 int stub5 (TYPE_3__*,char*) ;
 int stub6 (TYPE_3__*,char*) ;
 int stub7 (TYPE_3__*,char*) ;

UINT PsLogFileGet(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 UINT ret = 0;
 BUF *buf;
 char *filename = ((void*)0);
 char *server_name;

 PARAM args[] =
 {

  {"[name]", CmdPrompt, _UU("CMD_LogFileGet_PROMPT_NAME"), CmdEvalNotEmpty, ((void*)0)},
  {"SERVER", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"SAVEPATH", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };

 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 filename = GetParamStr(o, "SAVE");
 if (IsEmptyStr(filename))
 {
  filename = GetParamStr(o, "SAVEPATH");
 }

 c->Write(c, _UU("CMD_LogFileGet_START"));

 server_name = GetParamStr(o, "SERVER");

 buf = DownloadFileFromServer(ps->Rpc, server_name,
  GetParamStr(o, "[name]"), 0, ((void*)0), ((void*)0));

 if (buf == ((void*)0))
 {
  c->Write(c, _UU("CMD_LogFileGet_FAILED"));

  ret = ERR_INTERNAL_ERROR;
 }
 else
 {
  if (IsEmptyStr(filename) == 0)
  {

   if (DumpBuf(buf, filename) == 0)
   {
    ret = ERR_INTERNAL_ERROR;
    c->Write(c, _UU("CMD_LogFileGet_SAVE_FAILED"));
   }
  }
  else
  {

   wchar_t tmp[MAX_SIZE];
   UINT buf_size;
   wchar_t *uni_buf;

   UniFormat(tmp, sizeof(tmp), _UU("CMD_LogFileGet_FILESIZE"),
    buf->Size);
   c->Write(c, tmp);
   c->Write(c, L"");

   buf_size = CalcUtf8ToUni((BYTE *)buf->Buf, buf->Size);
   uni_buf = ZeroMalloc(buf_size + 32);

   Utf8ToUni(uni_buf, buf_size, (BYTE *)buf->Buf, buf->Size);

   c->Write(c, uni_buf);
   c->Write(c, L"");

   Free(uni_buf);
  }

  FreeBuf(buf);
 }

 FreeParamValueList(o);

 return ret;
}
