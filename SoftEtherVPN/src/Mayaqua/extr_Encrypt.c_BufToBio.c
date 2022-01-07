
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;
typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_seek (int *,int ) ;
 int BIO_write (int *,int ,int ) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int openssl_lock ;

BIO *BufToBio(BUF *b)
{
 BIO *bio;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(openssl_lock);
 {
  bio = BIO_new(BIO_s_mem());
  if (bio == ((void*)0))
  {
   Unlock(openssl_lock);
   return ((void*)0);
  }
  BIO_write(bio, b->Buf, b->Size);
  BIO_seek(bio, 0);
 }
 Unlock(openssl_lock);

 return bio;
}
