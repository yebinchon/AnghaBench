
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * PutPacket; int * GetNextPacket; int * GetCancel; int * Free; int * Init; } ;
typedef int PA_PUTPACKET ;
typedef int PA_INIT ;
typedef int PA_GETNEXTPACKET ;
typedef int PA_GETCANCEL ;
typedef int PA_FREE ;
typedef TYPE_1__ PACKET_ADAPTER ;


 TYPE_1__* ZeroMalloc (int) ;

PACKET_ADAPTER *NewPacketAdapter(PA_INIT *init, PA_GETCANCEL *getcancel, PA_GETNEXTPACKET *getnext,
         PA_PUTPACKET *put, PA_FREE *free)
{
 PACKET_ADAPTER *pa;

 if (init == ((void*)0) || getcancel == ((void*)0) || getnext == ((void*)0) || put == ((void*)0) || free == ((void*)0))
 {
  return ((void*)0);
 }

 pa = ZeroMalloc(sizeof(PACKET_ADAPTER));

 pa->Init = init;
 pa->Free = free;
 pa->GetCancel = getcancel;
 pa->GetNextPacket = getnext;
 pa->PutPacket = put;

 return pa;
}
