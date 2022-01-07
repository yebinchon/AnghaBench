
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NoFree; int SendFifo; int RecvFifo; int bio; } ;
typedef TYPE_1__ SSL_BIO ;


 int BIO_free (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseFifo (int ) ;

void FreeSslBio(SSL_BIO *b)
{

 if (b == ((void*)0))
 {
  return;
 }

 if (b->NoFree == 0)
 {
  BIO_free(b->bio);
 }

 ReleaseFifo(b->RecvFifo);
 ReleaseFifo(b->SendFifo);

 Free(b);
}
