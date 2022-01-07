
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int result ;
typedef int args ;
typedef unsigned long long UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {char* member_0; int member_2; int member_1; } ;
struct TYPE_15__ {scalar_t__ ConsoleType; int * Param; int (* Write ) (TYPE_3__*,int *) ;} ;
struct TYPE_14__ {int * InBuf; } ;
struct TYPE_13__ {char* member_0; TYPE_4__* member_4; int * member_3; int * member_2; int * member_1; } ;
typedef int TT_RESULT ;
typedef int TTC ;
typedef TYPE_1__ PARAM ;
typedef TYPE_2__ LOCAL_CONSOLE_PARAM ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;
typedef TYPE_4__ CMD_EVAL_MIN_MAX ;


 scalar_t__ CONSOLE_LOCAL ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (char*) ;
 int FreeParamValueList (int *) ;
 scalar_t__ FreeTtc (int *,int *) ;
 scalar_t__ GetParamInt (int *,char*) ;
 char* GetParamStr (int *,char*) ;
 int GetParamYes (int *,char*) ;
 int * NewTtc (char*,scalar_t__,scalar_t__,scalar_t__,unsigned long long,int,int,int ,TYPE_3__*) ;
 int * ParseCommandList (TYPE_3__*,char*,int *,TYPE_1__*,int) ;
 int ParseHostPort (char*,char**,scalar_t__*,int ) ;
 int PtTrafficPrintProc ;
 scalar_t__ StartWith (char*,char*) ;
 int TRAFFIC_DEFAULT_PORT ;
 scalar_t__ TRAFFIC_NUMTCP_DEFAULT ;
 int TRAFFIC_NUMTCP_MAX ;
 scalar_t__ TRAFFIC_SPAN_DEFAULT ;
 scalar_t__ TRAFFIC_TYPE_DOWNLOAD ;
 scalar_t__ TRAFFIC_TYPE_FULL ;
 scalar_t__ TRAFFIC_TYPE_UPLOAD ;
 int Trim (char*) ;
 int TtcPrintResult (TYPE_3__*,int *) ;
 int Zero (int *,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int *) ;

UINT PtTrafficClient(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 TTC *ttc;
 LIST *o;
 UINT ret = ERR_NO_ERROR;
 char *host = ((void*)0);
 UINT port;
 UINT num, type;
 bool dbl = 0, raw = 0;
 UINT64 span;

 CMD_EVAL_MIN_MAX minmax =
 {
  "CMD_TrafficClient_EVAL_NUMTCP",
  0, TRAFFIC_NUMTCP_MAX,
 };
 PARAM args[] =
 {
  {"[host:port]", CmdPrompt, _UU("CMD_TrafficClient_PROMPT_HOST"), CmdEvalNotEmpty, ((void*)0)},
  {"NUMTCP", ((void*)0), ((void*)0), CmdEvalMinMax, &minmax},
  {"TYPE", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"SPAN", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"DOUBLE", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"RAW", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (ParseHostPort(GetParamStr(o, "[host:port]"), &host, &port, TRAFFIC_DEFAULT_PORT) == 0)
 {
  c->Write(c, _UU("CMD_TrafficClient_ERROR_HOSTPORT"));
  ret = ERR_INVALID_PARAMETER;
 }
 else
 {
  char *s;
  UINT i;

  Trim(host);

  num = GetParamInt(o, "NUMTCP");
  if (num == 0)
  {
   num = TRAFFIC_NUMTCP_DEFAULT;
  }
  s = GetParamStr(o, "TYPE");

  if (StartWith("download", s))
  {
   type = TRAFFIC_TYPE_DOWNLOAD;
  }
  else if (StartWith("upload", s))
  {
   type = TRAFFIC_TYPE_UPLOAD;
  }
  else
  {
   type = TRAFFIC_TYPE_FULL;
  }

  i = GetParamInt(o, "SPAN");

  if (i == 0)
  {
   i = TRAFFIC_SPAN_DEFAULT;
  }

  span = (UINT64)i * 1000ULL;

  dbl = GetParamYes(o, "DOUBLE");
  raw = GetParamYes(o, "RAW");

  if (type == TRAFFIC_TYPE_FULL)
  {
   if ((num % 2) != 0)
   {
    ret = ERR_INVALID_PARAMETER;
    c->Write(c, _UU("CMD_TrafficClient_ERROR_NUMTCP"));
   }
  }

  if (ret == ERR_NO_ERROR)
  {
   TT_RESULT result;
   ttc = NewTtc(host, port, num, type, span, dbl, raw, PtTrafficPrintProc, c);

   if (c->ConsoleType == CONSOLE_LOCAL)
   {
    if (c->Param != ((void*)0) && (((LOCAL_CONSOLE_PARAM *)c->Param)->InBuf == ((void*)0)))
    {



    }
   }


   Zero(&result, sizeof(result));
   ret = FreeTtc(ttc, &result);

   if (ret == ERR_NO_ERROR)
   {
    TtcPrintResult(c, &result);
   }
  }
 }

 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 Free(host);

 return ret;
}
