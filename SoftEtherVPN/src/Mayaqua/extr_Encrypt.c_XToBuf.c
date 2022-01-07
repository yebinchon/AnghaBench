
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int BUF ;
typedef int BIO ;


 int * BioToBuf (int *) ;
 int FreeBio (int *) ;
 int SeekBuf (int *,int ,int ) ;
 int * XToBio (int *,int) ;

BUF *XToBuf(X *x, bool text)
{
 BIO *bio;
 BUF *b;

 if (x == ((void*)0))
 {
  return ((void*)0);
 }

 bio = XToBio(x, text);
 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 b = BioToBuf(bio);
 FreeBio(bio);

 SeekBuf(b, 0, 0);

 return b;
}
