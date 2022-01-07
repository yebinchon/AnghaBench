
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* IkeServer; int ThreadList; } ;
struct TYPE_10__ {int HasThread; int SessionId2; int SessionId1; int * TubeSend; int * TubeRecv; int * Thread; int * EtherIP; scalar_t__ IsV3; } ;
struct TYPE_9__ {int TunnelId2; int TunnelId1; } ;
struct TYPE_8__ {int ThreadList; } ;
typedef int THREAD ;
typedef TYPE_2__ L2TP_TUNNEL ;
typedef TYPE_3__ L2TP_SESSION ;
typedef TYPE_4__ L2TP_SERVER ;


 int AddThreadToThreadList (int ,int *) ;
 int Debug (char*,int ,int ,int ,int ) ;
 int ReleaseEtherIPServer (int *) ;
 int ReleaseThread (int *) ;
 int ReleaseTube (int *) ;
 int TubeDisconnect (int *) ;

void StopL2TPThread(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_SESSION *s)
{
 THREAD *thread;

 if (l2tp == ((void*)0) || t == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 if (s->IsV3)
 {

  if (s->EtherIP != ((void*)0))
  {

   ReleaseEtherIPServer(s->EtherIP);
   s->EtherIP = ((void*)0);
  }
  return;
 }

 if (s->HasThread == 0)
 {
  return;
 }
 thread = s->Thread;
 s->Thread = ((void*)0);
 s->HasThread = 0;


 TubeDisconnect(s->TubeRecv);
 TubeDisconnect(s->TubeSend);


 ReleaseTube(s->TubeRecv);
 ReleaseTube(s->TubeSend);

 s->TubeRecv = ((void*)0);
 s->TubeSend = ((void*)0);


 if (l2tp->IkeServer == ((void*)0))
 {
  AddThreadToThreadList(l2tp->ThreadList, thread);
 }
 else
 {
  AddThreadToThreadList(l2tp->IkeServer->ThreadList, thread);
 }

 Debug("Thread Stopped for Session %u/%u on Tunnel %u/%u\n",
  s->SessionId1, s->SessionId2, t->TunnelId1, t->TunnelId2);


 ReleaseThread(thread);
}
