
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int BUF ;
typedef int BIO ;


 int * BioToX (int *,int) ;
 int * BufToBio (int *) ;
 int FreeBio (int *) ;
 int FreeBuf (int *) ;

X *BufToX(BUF *b, bool text)
{
 X *x;
 BIO *bio;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 bio = BufToBio(b);
 if (bio == ((void*)0))
 {
  FreeBuf(b);
  return ((void*)0);
 }

 x = BioToX(bio, text);

 FreeBio(bio);

 return x;
}
