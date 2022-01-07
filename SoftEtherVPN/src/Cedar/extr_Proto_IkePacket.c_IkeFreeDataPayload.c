
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Data; } ;
typedef TYPE_1__ IKE_PACKET_DATA_PAYLOAD ;


 int FreeBuf (int ) ;

void IkeFreeDataPayload(IKE_PACKET_DATA_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeBuf(t->Data);
}
