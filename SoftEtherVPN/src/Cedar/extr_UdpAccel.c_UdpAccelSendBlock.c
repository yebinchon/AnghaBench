
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MaxUdpPacketSize; } ;
typedef TYPE_1__ UDP_ACCEL ;
struct TYPE_7__ {int PriorityQoS; int Compressed; int Size; int Buf; } ;
typedef TYPE_2__ BLOCK ;


 int UdpAccelSend (TYPE_1__*,int ,int ,int ,int ,int ) ;

void UdpAccelSendBlock(UDP_ACCEL *a, BLOCK *b)
{

 if (a == ((void*)0) || b == ((void*)0))
 {
  return;
 }

 UdpAccelSend(a, b->Buf, b->Size, b->Compressed, a->MaxUdpPacketSize, b->PriorityQoS);
}
