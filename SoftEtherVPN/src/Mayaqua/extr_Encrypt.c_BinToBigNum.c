
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BIGNUM ;


 int BN_bin2bn (void*,int ,int *) ;
 int * BN_new () ;

BIGNUM *BinToBigNum(void *data, UINT size)
{
 BIGNUM *bn;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 bn = BN_new();
 BN_bin2bn(data, size, bn);

 return bn;
}
