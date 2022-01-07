
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp1600 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_7__ {TYPE_1__* Crypto; } ;
struct TYPE_6__ {TYPE_4__* Key; int NextIv; int Iv; } ;
struct TYPE_5__ {int BlockSize; } ;
typedef TYPE_2__ IKE_CRYPTO_PARAM ;
typedef int BUF ;


 int Copy (int ,int *,int) ;
 int Free (void*) ;
 int IkeCryptoEncrypt (TYPE_4__*,void*,void*,int,int ) ;
 void* Malloc (int) ;
 int * MemToBuf (void*,int) ;
 int Zero (int ,int) ;

BUF *IkeEncrypt(void *data, UINT size, IKE_CRYPTO_PARAM *cparam)
{
 void *tmp;
 BUF *b;
 UCHAR tmp1600[1600];
 bool no_free = 0;

 if (data == ((void*)0) || cparam == ((void*)0))
 {
  return ((void*)0);
 }

 if ((size % cparam->Key->Crypto->BlockSize) != 0)
 {

  return ((void*)0);
 }

 if (size > sizeof(tmp1600))
 {
  tmp = Malloc(size);
 }
 else
 {
  tmp = tmp1600;
  no_free = 1;
 }

 IkeCryptoEncrypt(cparam->Key, tmp, data, size, cparam->Iv);

 if (size >= cparam->Key->Crypto->BlockSize)
 {
  Copy(cparam->NextIv, ((UCHAR *)tmp) + (size - cparam->Key->Crypto->BlockSize), cparam->Key->Crypto->BlockSize);
 }
 else
 {
  Zero(cparam->NextIv, cparam->Key->Crypto->BlockSize);
 }

 b = MemToBuf(tmp, size);

 if (no_free == 0)
 {
  Free(tmp);
 }

 return b;
}
