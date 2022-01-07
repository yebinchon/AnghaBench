
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;

BIO *NewBio()
{
 return BIO_new(BIO_s_mem());
}
