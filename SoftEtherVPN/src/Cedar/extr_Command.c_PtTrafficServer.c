
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int args ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {int (* ReadLine ) (TYPE_3__*,char*,int) ;int (* Write ) (TYPE_3__*,int ) ;} ;
struct TYPE_14__ {char* member_0; int * member_4; int * member_3; int * member_2; int * member_1; } ;
struct TYPE_13__ {scalar_t__ ErrorCode; } ;
typedef TYPE_1__ TTS ;
typedef TYPE_2__ PARAM ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;


 int CmdPrintError (TYPE_3__*,scalar_t__) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (int ) ;
 int FreeParamValueList (int *) ;
 int FreeTts (TYPE_1__*) ;
 scalar_t__ GetParamInt (int *,char*) ;
 int GetParamYes (int *,char*) ;
 TYPE_1__* NewTts (scalar_t__,TYPE_3__*,int ) ;
 int * ParseCommandList (TYPE_3__*,char*,int *,TYPE_2__*,int) ;
 int PtTrafficPrintProc ;
 int SleepThread (int) ;
 scalar_t__ TRAFFIC_DEFAULT_PORT ;
 int _UU (char*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,char*,int) ;

UINT PtTrafficServer(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 UINT ret = ERR_NO_ERROR;
 UINT port;
 bool nohup;
 TTS *tts;
 PARAM args[] =
 {
  {"[port]", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
  {"NOHUP", ((void*)0), ((void*)0), ((void*)0), ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 port = GetParamInt(o, "[port]");
 if (port == 0)
 {
  port = TRAFFIC_DEFAULT_PORT;
 }

 nohup = GetParamYes(o, "nohup");

 tts = NewTts(port, c, PtTrafficPrintProc);

 if (nohup)
 {
  while (1)
  {
   SleepThread(10000);
  }
 }

 c->Write(c, _UU("TTS_ENTER_TO_EXIT"));

 Free(c->ReadLine(c, L"", 1));

 ret = tts->ErrorCode;

 FreeTts(tts);

 if (ret != ERR_NO_ERROR)
 {
  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 return ret;
}
