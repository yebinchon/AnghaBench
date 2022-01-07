
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Size; int dh; } ;
typedef TYPE_1__ DH_CTX ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BinToBigNum (void*,int) ;
 int * Clone (void*,int) ;
 int Copy (int *,int *,int) ;
 int DH_compute_key (void*,int *,int ) ;
 int Zero (void*,int) ;

bool DhCompute(DH_CTX *dh, void *dst_priv_key, void *src_pub_key, UINT key_size)
{
 int i;
 BIGNUM *bn;
 bool ret = 0;

 if (dh == ((void*)0) || dst_priv_key == ((void*)0) || src_pub_key == ((void*)0))
 {
  return 0;
 }
 if (key_size > dh->Size)
 {
  return 0;
 }

 bn = BinToBigNum(src_pub_key, key_size);

 i = DH_compute_key(dst_priv_key, bn, dh->dh);

 if (i == dh->Size)
 {
  ret = 1;
 }
 else if ((UINT)i < dh->Size)
 {
  UCHAR *dst2 = Clone(dst_priv_key, i);

  Zero(dst_priv_key, dh->Size);

  Copy(((UCHAR *)dst_priv_key) + (dh->Size - i), dst2, i);

  ret = 1;
 }

 BN_free(bn);

 return ret;
}
