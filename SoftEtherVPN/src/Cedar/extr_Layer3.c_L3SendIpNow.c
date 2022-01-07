
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int MacAddress; } ;
struct TYPE_15__ {int MacAddress; } ;
struct TYPE_14__ {TYPE_3__* Packet; } ;
struct TYPE_12__ {int PointerL3; } ;
struct TYPE_13__ {scalar_t__ PacketSize; TYPE_2__ L3; TYPE_1__* MacHeader; } ;
struct TYPE_11__ {int Protocol; } ;
typedef int MAC_HEADER ;
typedef TYPE_4__ L3PACKET ;
typedef TYPE_5__ L3IF ;
typedef TYPE_6__ L3ARPENTRY ;


 int Endian16 (int ) ;
 int L3SendL2Now (TYPE_5__*,int ,int ,int ,int ,scalar_t__) ;
 int broadcast ;

void L3SendIpNow(L3IF *f, L3ARPENTRY *a, L3PACKET *p)
{

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 L3SendL2Now(f, a != ((void*)0) ? a->MacAddress : broadcast, f->MacAddress, Endian16(p->Packet->MacHeader->Protocol),
  p->Packet->L3.PointerL3, p->Packet->PacketSize - sizeof(MAC_HEADER));
}
