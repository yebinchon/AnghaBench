
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int K ;
typedef int BUF ;
typedef int BIO ;


 int * BioToBuf (int *) ;
 int FreeBio (int *) ;
 int * KToBio (int *,int,char*) ;
 int SeekBuf (int *,int ,int ) ;

BUF *KToBuf(K *k, bool text, char *password)
{
 BUF *buf;
 BIO *bio;

 if (k == ((void*)0))
 {
  return ((void*)0);
 }

 bio = KToBio(k, text, password);
 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 buf = BioToBuf(bio);
 FreeBio(bio);

 SeekBuf(buf, 0, 0);

 return buf;
}
