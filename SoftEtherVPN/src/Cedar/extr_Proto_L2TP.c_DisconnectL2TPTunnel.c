
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Disconnecting; int WantToDisconnect; int SessionList; int TunnelId2; int TunnelId1; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef int L2TP_SESSION ;


 int Debug (char*,int ,int ) ;
 int DisconnectL2TPSession (TYPE_1__*,int *) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void DisconnectL2TPTunnel(L2TP_TUNNEL *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if ( t->Disconnecting == 0 && t->WantToDisconnect == 0)
 {
  UINT i;

  Debug("Trying to Disconnect Tunnel ID %u/%u\n", t->TunnelId1, t->TunnelId2);
  t->WantToDisconnect = 1;


  for (i = 0;i < LIST_NUM(t->SessionList);i++)
  {
   L2TP_SESSION *s = LIST_DATA(t->SessionList, i);

   DisconnectL2TPSession(t, s);
  }
 }
}
