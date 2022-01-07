
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* SendFifo; void* RecvFifo; int bio; } ;
typedef TYPE_1__ SSL_BIO ;


 int BIO_f_ssl () ;
 int BIO_new (int ) ;
 void* NewFifo () ;
 TYPE_1__* ZeroMalloc (int) ;

SSL_BIO *NewSslBioSsl()
{
 SSL_BIO *b = ZeroMalloc(sizeof(SSL_BIO));

 b->bio = BIO_new(BIO_f_ssl());

 b->RecvFifo = NewFifo();
 b->SendFifo = NewFifo();

 return b;
}
