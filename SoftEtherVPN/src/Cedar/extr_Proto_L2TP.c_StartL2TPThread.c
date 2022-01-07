
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_12__ {int CryptName; int Cedar; int SockEvent; } ;
struct TYPE_11__ {int HasThread; int TubeRecv; int TubeSend; int Thread; int SessionId2; int SessionId1; } ;
struct TYPE_10__ {int HostName; int ServerPort; int ServerIp; int ClientPort; int ClientIp; int VendorName; int TunnelId2; int TunnelId1; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;
typedef TYPE_3__ L2TP_SERVER ;


 int CalcL2TPMss (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int Debug (char*,int ,int ,int ,int ) ;
 int Format (char*,int,int ,int ) ;
 int IsEmptyStr (int ) ;
 int L2TP_IPC_CLIENT_NAME_NO_TAG ;
 int L2TP_IPC_CLIENT_NAME_TAG ;
 int L2TP_IPC_POSTFIX ;
 int MAX_SIZE ;
 int NewPPPSession (int ,int *,int ,int *,int ,int ,int ,int ,char*,int ,int ,int ) ;
 int NewTubePair (int *,int *,int ) ;
 int SetTubeSockEvent (int ,int ) ;
 int StrCpy (char*,int,int ) ;

void StartL2TPThread(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_SESSION *s)
{

 if (l2tp == ((void*)0) || t == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 if (s->HasThread == 0)
 {
  char tmp[MAX_SIZE];

  Debug("Thread Created for Session %u/%u on Tunnel %u/%u\n",
   s->SessionId1, s->SessionId2, t->TunnelId1, t->TunnelId2);

  s->HasThread = 1;

  NewTubePair(&s->TubeSend, &s->TubeRecv, 0);
  SetTubeSockEvent(s->TubeSend, l2tp->SockEvent);

  if (IsEmptyStr(t->VendorName) == 0)
  {
   Format(tmp, sizeof(tmp), L2TP_IPC_CLIENT_NAME_TAG, t->VendorName);
  }
  else
  {
   StrCpy(tmp, sizeof(tmp), L2TP_IPC_CLIENT_NAME_NO_TAG);
  }


  s->Thread = NewPPPSession(l2tp->Cedar, &t->ClientIp, t->ClientPort, &t->ServerIp, t->ServerPort,
   s->TubeSend, s->TubeRecv, L2TP_IPC_POSTFIX, tmp, t->HostName, l2tp->CryptName,
   CalcL2TPMss(l2tp, t, s));
 }
}
