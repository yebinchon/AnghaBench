
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;

void FreeBio(BIO *bio)
{

 if (bio == ((void*)0))
 {
  return;
 }

 BIO_free(bio);
}
