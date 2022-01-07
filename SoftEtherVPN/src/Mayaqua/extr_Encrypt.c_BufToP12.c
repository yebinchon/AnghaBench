
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int P12 ;
typedef int BUF ;
typedef int BIO ;


 int * BioToP12 (int *) ;
 int * BufToBio (int *) ;
 int FreeBio (int *) ;

P12 *BufToP12(BUF *b)
{
 P12 *p12;
 BIO *bio;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 bio = BufToBio(b);
 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 p12 = BioToP12(bio);
 FreeBio(bio);

 return p12;
}
