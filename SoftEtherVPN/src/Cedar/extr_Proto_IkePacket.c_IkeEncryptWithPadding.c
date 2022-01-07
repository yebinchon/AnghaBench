
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp1600 ;
typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_8__ {TYPE_2__* Key; } ;
struct TYPE_7__ {TYPE_1__* Crypto; } ;
struct TYPE_6__ {int BlockSize; } ;
typedef TYPE_3__ IKE_CRYPTO_PARAM ;
typedef int BUF ;


 int Copy (scalar_t__*,void*,int) ;
 int Free (scalar_t__*) ;
 int * IkeEncrypt (scalar_t__*,int,TYPE_3__*) ;
 scalar_t__* Malloc (int) ;

BUF *IkeEncryptWithPadding(void *data, UINT size, IKE_CRYPTO_PARAM *cparam)
{
 UINT total_size;
 UINT i;
 UCHAR n = 0;
 UCHAR *tmp;
 BUF *ret;
 UCHAR tmp1600[1600];
 bool no_free = 0;

 if (data == ((void*)0) || cparam == ((void*)0))
 {
  return ((void*)0);
 }

 total_size = ((size / cparam->Key->Crypto->BlockSize) + ((size % cparam->Key->Crypto->BlockSize) == 0 ? 0 : 1))
  * cparam->Key->Crypto->BlockSize;
 if (total_size == 0)
 {
  total_size = cparam->Key->Crypto->BlockSize;
 }

 if (total_size > sizeof(tmp1600))
 {
  tmp = Malloc(total_size);
 }
 else
 {
  tmp = tmp1600;
  no_free = 1;
 }

 Copy(tmp, data, size);

 for (i = size;i < total_size;i++)
 {
  tmp[i] = ++n;
 }

 ret = IkeEncrypt(tmp, total_size, cparam);

 if (no_free == 0)
 {
  Free(tmp);
 }

 return ret;
}
