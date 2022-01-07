
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Data; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int IKE_PACKET ;


 int * IkeParseHeader (int ,int ,int *) ;

IKE_PACKET *ParseIKEPacketHeader(UDPPACKET *p)
{

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 return IkeParseHeader(p->Data, p->Size, ((void*)0));
}
