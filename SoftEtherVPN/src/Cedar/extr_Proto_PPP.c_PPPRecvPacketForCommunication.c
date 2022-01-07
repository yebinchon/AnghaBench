
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * LastStoredPacket; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef int PPP_PACKET ;


 int * PPPRecvPacketWithLowLayerProcessing (TYPE_1__*,int) ;

PPP_PACKET *PPPRecvPacketForCommunication(PPP_SESSION *p)
{

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 if (p->LastStoredPacket != ((void*)0))
 {
  PPP_PACKET *pp = p->LastStoredPacket;
  p->LastStoredPacket = ((void*)0);
  return pp;
 }

 return PPPRecvPacketWithLowLayerProcessing(p, 1);
}
