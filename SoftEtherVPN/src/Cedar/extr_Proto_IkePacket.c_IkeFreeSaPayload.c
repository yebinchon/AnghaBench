
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * PayloadList; } ;
typedef TYPE_1__ IKE_PACKET_SA_PAYLOAD ;


 int IkeFreePayloadList (int *) ;

void IkeFreeSaPayload(IKE_PACKET_SA_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->PayloadList != ((void*)0))
 {
  IkeFreePayloadList(t->PayloadList);
  t->PayloadList = ((void*)0);
 }
}
