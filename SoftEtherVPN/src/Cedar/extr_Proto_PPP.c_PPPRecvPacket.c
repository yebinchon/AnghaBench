
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int LastRecvTime; int TubeRecv; } ;
struct TYPE_7__ {int DataSize; int Data; } ;
typedef TYPE_1__ TUBEDATA ;
typedef TYPE_2__ PPP_SESSION ;
typedef int PPP_PACKET ;


 int FreeTubeData (TYPE_1__*) ;
 int PPP_PACKET_RECV_TIMEOUT ;
 int * ParsePPPPacket (int ,int ) ;
 int Tick64 () ;
 TYPE_1__* TubeRecvAsync (int ) ;
 TYPE_1__* TubeRecvSync (int ,int ) ;

PPP_PACKET *PPPRecvPacket(PPP_SESSION *p, bool async)
{
 TUBEDATA *d;
 PPP_PACKET *pp;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

LABEL_LOOP:

 if (async == 0)
 {
  d = TubeRecvSync(p->TubeRecv, PPP_PACKET_RECV_TIMEOUT);
 }
 else
 {
  d = TubeRecvAsync(p->TubeRecv);
 }

 if (d == ((void*)0))
 {
  return ((void*)0);
 }

 pp = ParsePPPPacket(d->Data, d->DataSize);
 FreeTubeData(d);

 if (pp == ((void*)0))
 {

  goto LABEL_LOOP;
 }

 p->LastRecvTime = Tick64();

 return pp;
}
