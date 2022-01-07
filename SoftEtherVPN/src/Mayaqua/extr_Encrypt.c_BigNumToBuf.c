
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int BUF ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,int *) ;
 int BN_num_bytes (int const*) ;
 int Free (int *) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int *,int ) ;
 int * ZeroMalloc (int ) ;

BUF *BigNumToBuf(const BIGNUM *bn)
{
 UINT size;
 UCHAR *tmp;
 BUF *b;

 if (bn == ((void*)0))
 {
  return ((void*)0);
 }

 size = BN_num_bytes(bn);
 tmp = ZeroMalloc(size);
 BN_bn2bin(bn, tmp);

 b = NewBuf();
 WriteBuf(b, tmp, size);
 Free(tmp);

 SeekBuf(b, 0, 0);

 return b;
}
