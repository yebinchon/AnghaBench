
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * DecryptedPayload; int * PayloadList; } ;
typedef TYPE_1__ IKE_PACKET ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int *) ;
 int IkeFreePayloadList (int *) ;

void IkeFree(IKE_PACKET *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->PayloadList != ((void*)0))
 {
  IkeFreePayloadList(p->PayloadList);
 }

 if (p->DecryptedPayload != ((void*)0))
 {
  FreeBuf(p->DecryptedPayload);
 }

 Free(p);
}
