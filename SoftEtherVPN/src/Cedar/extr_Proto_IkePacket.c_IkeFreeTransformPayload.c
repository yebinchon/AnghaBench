
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ValueList; } ;
typedef TYPE_1__ IKE_PACKET_TRANSFORM_PAYLOAD ;


 int IkeFreeTransformValueList (int *) ;

void IkeFreeTransformPayload(IKE_PACKET_TRANSFORM_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->ValueList != ((void*)0))
 {
  IkeFreeTransformValueList(t->ValueList);
  t->ValueList = ((void*)0);
 }
}
