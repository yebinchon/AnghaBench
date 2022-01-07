
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * LastStoredPacket; } ;
typedef TYPE_1__ PPP_SESSION ;
typedef int PPP_PACKET ;


 int FreePPPPacket (int *) ;

void PPPStoreLastPacket(PPP_SESSION *p, PPP_PACKET *pp)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->LastStoredPacket != ((void*)0))
 {
  FreePPPPacket(p->LastStoredPacket);
 }

 p->LastStoredPacket = pp;
}
