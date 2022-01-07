
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int DisconnectFlag; int DisconnectedByYou; int Magic_Disconnect; int * TcpSock; } ;
typedef int RUDP_STACK ;
typedef TYPE_1__ RUDP_SESSION ;


 int Debug (char*,TYPE_1__*,int) ;
 int Disconnect (int *) ;
 int RUDPSendSegmentNow (int *,TYPE_1__*,int ,int *,int ) ;
 int ReleaseSock (int *) ;

void RUDPDisconnectSession(RUDP_STACK *r, RUDP_SESSION *se, bool disconnected_by_you)
{

 if (r == ((void*)0) || se == ((void*)0))
 {
  return;
 }

 if (se->DisconnectFlag == 0)
 {
  UINT i;

  se->DisconnectFlag = 1;
  se->DisconnectedByYou = disconnected_by_you;

  Debug("R-UDP Session %X Disconnected. by you flag: %u\n", se, disconnected_by_you);

  if (se->TcpSock != ((void*)0))
  {

   Disconnect(se->TcpSock);
   ReleaseSock(se->TcpSock);

   se->TcpSock = ((void*)0);
  }


  if (disconnected_by_you == 0)
  {
   for (i = 0;i < 5;i++)
   {
    RUDPSendSegmentNow(r, se, se->Magic_Disconnect, ((void*)0), 0);
   }
  }
 }
}
