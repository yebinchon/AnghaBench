
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int DataSize; int Data; scalar_t__ IsControl; } ;
struct TYPE_5__ {int FlushRecvTube; int TubeRecv; int ClientCipherName; int ClientHostName; int TubeSend; int ServerPort; int ServerIp; int ClientPort; int ClientIp; int Cedar; int * PPPThread; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef TYPE_2__ SSTP_PACKET ;


 int * NewPPPSession (int ,int *,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SSTP_IPC_CLIENT_NAME ;
 int SSTP_IPC_POSTFIX ;
 int TubeSendEx (int ,int ,int ,int *,int) ;

void SstpProcessDataPacket(SSTP_SERVER *s, SSTP_PACKET *p)
{

 if (s == ((void*)0) || p == ((void*)0) || p->IsControl)
 {
  return;
 }



 if (s->PPPThread == ((void*)0))
 {

  s->PPPThread = NewPPPSession(s->Cedar, &s->ClientIp, s->ClientPort, &s->ServerIp, s->ServerPort,
   s->TubeSend, s->TubeRecv, SSTP_IPC_POSTFIX, SSTP_IPC_CLIENT_NAME,
   s->ClientHostName, s->ClientCipherName, 0);
 }


 TubeSendEx(s->TubeRecv, p->Data, p->DataSize, ((void*)0), 1);
 s->FlushRecvTube = 1;
}
