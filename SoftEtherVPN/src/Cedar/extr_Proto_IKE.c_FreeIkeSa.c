
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CryptoKey; int SAi_b; int GXr; int GXi; int YourIDPayloadForAM; int DhSharedKey; int ResponderRand; int InitiatorRand; int SendBuffer; } ;
typedef TYPE_1__ IKE_SA ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int IkeFreeKey (int ) ;

void FreeIkeSa(IKE_SA *sa)
{

 if (sa == ((void*)0))
 {
  return;
 }

 FreeBuf(sa->SendBuffer);

 FreeBuf(sa->InitiatorRand);
 FreeBuf(sa->ResponderRand);
 FreeBuf(sa->DhSharedKey);
 FreeBuf(sa->YourIDPayloadForAM);

 FreeBuf(sa->GXi);
 FreeBuf(sa->GXr);

 FreeBuf(sa->SAi_b);

 IkeFreeKey(sa->CryptoKey);

 Free(sa);
}
