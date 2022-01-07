
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int K ;
typedef int BUF ;
typedef int BIO ;


 int * BioToK (int *,int,int,char*) ;
 int * BufToBio (int *) ;
 int FreeBio (int *) ;

K *BufToK(BUF *b, bool private_key, bool text, char *password)
{
 BIO *bio;
 K *k;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 bio = BufToBio(b);
 k = BioToK(bio, private_key, text, password);
 FreeBio(bio);

 return k;
}
