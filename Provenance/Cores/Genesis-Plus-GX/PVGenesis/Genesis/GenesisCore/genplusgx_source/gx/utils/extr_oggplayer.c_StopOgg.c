
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASND_StopVoice (int ) ;
 int LWP_CloseQueue (scalar_t__) ;
 int LWP_JoinThread (scalar_t__,int *) ;
 scalar_t__ LWP_THREAD_NULL ;
 scalar_t__ LWP_TQUEUE_NULL ;
 int LWP_ThreadSignal (scalar_t__) ;
 scalar_t__ h_oggplayer ;
 scalar_t__ ogg_thread_running ;
 scalar_t__ oggplayer_queue ;

void StopOgg()
{
  ASND_StopVoice(0);
  ogg_thread_running = 0;

  if(h_oggplayer != LWP_THREAD_NULL)
  {
    if(oggplayer_queue != LWP_TQUEUE_NULL)
      LWP_ThreadSignal(oggplayer_queue);
    LWP_JoinThread(h_oggplayer, ((void*)0));
    h_oggplayer = LWP_THREAD_NULL;
  }
  if(oggplayer_queue != LWP_TQUEUE_NULL)
  {
    LWP_CloseQueue(oggplayer_queue);
    oggplayer_queue = LWP_TQUEUE_NULL;
  }
}
