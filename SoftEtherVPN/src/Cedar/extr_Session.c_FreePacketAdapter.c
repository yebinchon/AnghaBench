
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET_ADAPTER ;


 int Free (int *) ;

void FreePacketAdapter(PACKET_ADAPTER *pa)
{

 if (pa == ((void*)0))
 {
  return;
 }

 Free(pa);
}
