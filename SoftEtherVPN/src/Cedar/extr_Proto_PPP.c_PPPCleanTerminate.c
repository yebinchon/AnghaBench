
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ Code; } ;
struct TYPE_14__ {int IsControl; scalar_t__ Protocol; TYPE_9__* Lcp; } ;
struct TYPE_13__ {TYPE_10__* TubeRecv; int NextId; } ;
struct TYPE_12__ {int Event; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef TYPE_2__ PPP_PACKET ;


 int Debug (char*) ;
 int FreePPPPacket (TYPE_2__*) ;
 int IsTubeConnected (TYPE_10__*) ;
 TYPE_9__* NewPPPLCP (int ,int ) ;
 TYPE_2__* PPPRecvPacket (TYPE_1__*,int) ;
 int PPPSendPacket (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ PPP_LCP_CODE_TERMINATE_ACK ;
 int PPP_LCP_CODE_TERMINATE_REQ ;
 scalar_t__ PPP_PROTOCOL_LCP ;
 scalar_t__ PPP_TERMINATE_TIMEOUT ;
 scalar_t__ Tick64 () ;
 int Wait (int ,scalar_t__) ;
 TYPE_2__* ZeroMalloc (int) ;

void PPPCleanTerminate(PPP_SESSION *p)
{
 PPP_PACKET *pp;
 PPP_PACKET *res;
 UINT64 giveup_tick = Tick64() + (UINT64)PPP_TERMINATE_TIMEOUT;

 if (p == ((void*)0))
 {
  return;
 }


 pp = ZeroMalloc(sizeof(PPP_PACKET));
 pp->IsControl = 1;
 pp->Protocol = PPP_PROTOCOL_LCP;
 pp->Lcp = NewPPPLCP(PPP_LCP_CODE_TERMINATE_REQ, p->NextId++);
 Debug("PPP: Terminate Request is Sent.\n");
 if (PPPSendPacket(p, pp) == 0)
 {
  goto LABEL_CLEANUP;
 }


 while (1)
 {
  UINT64 now = Tick64();
  UINT interval;

  if (now >= giveup_tick)
  {
   break;
  }

  while (1)
  {
   if (IsTubeConnected(p->TubeRecv) == 0)
   {
    break;
   }

   res = PPPRecvPacket(p, 1);

   if (res == ((void*)0))
   {
    break;
   }

   if (res->IsControl && res->Protocol == PPP_PROTOCOL_LCP && res->Lcp->Code == PPP_LCP_CODE_TERMINATE_ACK)
   {
    Debug("PPP: Terminate ACK is Received.\n");
    FreePPPPacket(res);
    goto LABEL_CLEANUP;
   }

   FreePPPPacket(res);
  }

  interval = (UINT)(giveup_tick - now);

  Wait(p->TubeRecv->Event, interval);
 }

LABEL_CLEANUP:
 FreePPPPacket(pp);
}
