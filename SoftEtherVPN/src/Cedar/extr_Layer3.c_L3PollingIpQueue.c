
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int IpPacketQueue; } ;
struct TYPE_7__ {int * Packet; } ;
typedef int PKT ;
typedef TYPE_1__ L3PACKET ;
typedef TYPE_2__ L3IF ;


 TYPE_1__* GetNext (int ) ;
 int L3SendIp (TYPE_2__*,TYPE_1__*) ;

void L3PollingIpQueue(L3IF *f)
{
 L3PACKET *p;

 if (f == ((void*)0))
 {
  return;
 }


 while (p = GetNext(f->IpPacketQueue))
 {
  PKT *pkt = p->Packet;


  L3SendIp(f, p);
 }
}
