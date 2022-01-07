
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * IdData; } ;
typedef TYPE_1__ IKE_PACKET_ID_PAYLOAD ;


 int FreeBuf (int *) ;

void IkeFreeIdPayload(IKE_PACKET_ID_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->IdData != ((void*)0))
 {
  FreeBuf(t->IdData);
  t->IdData = ((void*)0);
 }
}
