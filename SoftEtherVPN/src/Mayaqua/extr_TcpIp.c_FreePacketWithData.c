
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* PacketData; } ;
typedef TYPE_1__ PKT ;


 int Free (void*) ;
 int FreePacket (TYPE_1__*) ;

void FreePacketWithData(PKT *p)
{
 void *data;

 if (p == ((void*)0))
 {
  return;
 }

 data = p->PacketData;

 FreePacket(p);

 Free(data);
}
