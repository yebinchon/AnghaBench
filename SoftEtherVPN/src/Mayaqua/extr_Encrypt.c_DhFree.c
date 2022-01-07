
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MyPublicKey; int MyPrivateKey; int dh; } ;
typedef TYPE_1__ DH_CTX ;


 int DH_free (int ) ;
 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;

void DhFree(DH_CTX *dh)
{

 if (dh == ((void*)0))
 {
  return;
 }

 DH_free(dh->dh);

 FreeBuf(dh->MyPrivateKey);
 FreeBuf(dh->MyPublicKey);

 Free(dh);
}
