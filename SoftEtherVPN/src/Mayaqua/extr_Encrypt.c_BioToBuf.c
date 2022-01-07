
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;
typedef int BIO ;


 scalar_t__ BIO_number_written (int *) ;
 int BIO_read (int *,void*,scalar_t__) ;
 int BIO_seek (int *,int ) ;
 int Free (void*) ;
 void* Malloc (scalar_t__) ;
 int * NewBuf () ;
 int WriteBuf (int *,void*,scalar_t__) ;

BUF *BioToBuf(BIO *bio)
{
 BUF *b;
 UINT size;
 void *tmp;

 if (bio == ((void*)0))
 {
  return ((void*)0);
 }

 BIO_seek(bio, 0);
 size = (UINT)BIO_number_written(bio);
 tmp = Malloc(size);
 BIO_read(bio, tmp, size);

 b = NewBuf();
 WriteBuf(b, tmp, size);
 Free(tmp);

 return b;
}
