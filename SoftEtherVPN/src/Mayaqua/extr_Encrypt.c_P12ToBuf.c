
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int P12 ;
typedef int BUF ;
typedef int BIO ;


 int * BioToBuf (int *) ;
 int FreeBio (int *) ;
 int * P12ToBio (int *) ;
 int SeekBuf (int *,int ,int ) ;

BUF *P12ToBuf(P12 *p12)
{
 BIO *bio;
 BUF *buf;

 if (p12 == ((void*)0))
 {
  return ((void*)0);
 }

 bio = P12ToBio(p12);
 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 buf = BioToBuf(bio);
 FreeBio(bio);

 SeekBuf(buf, 0, 0);

 return buf;
}
