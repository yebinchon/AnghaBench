
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Dh; int SharedKey; int ResponderRand; int InitiatorRand; int SendBuffer; int CryptoKey; } ;
typedef TYPE_1__ IPSECSA ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int IkeDhFreeCtx (int ) ;
 int IkeFreeKey (int ) ;

void FreeIPsecSa(IPSECSA *sa)
{

 if (sa == ((void*)0))
 {
  return;
 }

 IkeFreeKey(sa->CryptoKey);

 FreeBuf(sa->SendBuffer);

 FreeBuf(sa->InitiatorRand);
 FreeBuf(sa->ResponderRand);

 FreeBuf(sa->SharedKey);

 IkeDhFreeCtx(sa->Dh);

 Free(sa);
}
