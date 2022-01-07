
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ListenSocketV6; } ;
typedef TYPE_1__ TTS ;
typedef int THREAD ;


 int TtsAcceptProc (TYPE_1__*,int ) ;

void TtsIPv6AcceptThread(THREAD *thread, void *param)
{
 TTS *tts = (TTS *)param;

 if (tts == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 TtsAcceptProc(tts, tts->ListenSocketV6);
}
