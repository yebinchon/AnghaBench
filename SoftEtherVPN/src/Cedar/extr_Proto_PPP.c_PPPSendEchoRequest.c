
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int echo_data ;
struct TYPE_11__ {int DataSize; int Data; } ;
struct TYPE_10__ {int IsControl; TYPE_7__* Lcp; int Protocol; } ;
struct TYPE_9__ {int NextId; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef TYPE_2__ PPP_PACKET ;


 int Clone (char*,int) ;
 int FreePPPPacket (TYPE_2__*) ;
 TYPE_7__* NewPPPLCP (int ,int ) ;
 int PPPSendPacket (TYPE_1__*,TYPE_2__*) ;
 int PPP_LCP_CODE_ECHO_REQUEST ;
 int PPP_PROTOCOL_LCP ;
 TYPE_2__* ZeroMalloc (int) ;

void PPPSendEchoRequest(PPP_SESSION *p)
{
 PPP_PACKET *pp;
 char echo_data[]= "\0\0\0\0Aho Baka Manuke";

 if (p == ((void*)0))
 {
  return;
 }

 pp = ZeroMalloc(sizeof(PPP_PACKET));
 pp->Protocol = PPP_PROTOCOL_LCP;
 pp->IsControl = 1;
 pp->Lcp = NewPPPLCP(PPP_LCP_CODE_ECHO_REQUEST, p->NextId++);

 pp->Lcp->Data = Clone(echo_data, sizeof(echo_data));
 pp->Lcp->DataSize = sizeof(echo_data);

 PPPSendPacket(p, pp);

 FreePPPPacket(pp);
}
