
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NetBufferListPool; int NetBufferList; } ;
typedef TYPE_1__ PACKET_BUFFER ;


 int NdisFreeNetBufferList (int ) ;
 int NdisFreeNetBufferListPool (int ) ;
 int NeoFree (TYPE_1__*) ;

void NeoFreePacketBuffer(PACKET_BUFFER *p)
{

 if (p == ((void*)0))
 {
  return;
 }


 NdisFreeNetBufferList(p->NetBufferList);

 NdisFreeNetBufferListPool(p->NetBufferListPool);

 NeoFree(p);
}
