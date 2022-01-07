
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Halt; int WorkerList; int ErrorCode; int Print; int Param; int Thread; int ListenSocketV6; int ListenSocket; } ;
typedef TYPE_1__ TTS ;


 int Disconnect (int ) ;
 int ERR_INVALID_PARAMETER ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseList (int ) ;
 int ReleaseSock (int ) ;
 int ReleaseThread (int ) ;
 int TtPrint (int ,int ,int ) ;
 int WaitThread (int ,int ) ;
 int _UU (char*) ;

UINT FreeTts(TTS *tts)
{
 UINT ret;

 if (tts == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 TtPrint(tts->Param, tts->Print, _UU("TTS_STOP_INIT"));

 tts->Halt = 1;
 Disconnect(tts->ListenSocket);
 ReleaseSock(tts->ListenSocket);
 Disconnect(tts->ListenSocketV6);
 ReleaseSock(tts->ListenSocketV6);


 WaitThread(tts->Thread, INFINITE);

 ReleaseThread(tts->Thread);

 TtPrint(tts->Param, tts->Print, _UU("TTS_STOP_FINISHED"));

 ret = tts->ErrorCode;

 ReleaseList(tts->WorkerList);

 Free(tts);

 return ret;
}
