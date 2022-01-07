
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Disconnecting; int WantToDisconnect; int SessionId2; int SessionId1; scalar_t__ Established; } ;
struct TYPE_5__ {int TunnelId2; int TunnelId1; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;


 int Debug (char*,int ,int ,int ,int ) ;

void DisconnectL2TPSession(L2TP_TUNNEL *t, L2TP_SESSION *s)
{

 if (t == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 if (s->Established && s->Disconnecting == 0 && s->WantToDisconnect == 0)
 {
  Debug("Trying to Disconnect Session ID %u/%u on Tunnel %u/%u\n", s->SessionId1, s->SessionId2,
   t->TunnelId1, t->TunnelId2);
  s->WantToDisconnect = 1;
 }
}
