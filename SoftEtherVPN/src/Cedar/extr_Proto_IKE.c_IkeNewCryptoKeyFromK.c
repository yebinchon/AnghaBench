
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef int IKE_SERVER ;
typedef int IKE_HASH ;
typedef int IKE_CRYPTO_KEY ;
typedef int IKE_CRYPTO ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* IkeExpandKeySize (int *,void*,scalar_t__,scalar_t__) ;
 int * IkeNewKey (int *,int ,int ) ;

IKE_CRYPTO_KEY *IkeNewCryptoKeyFromK(IKE_SERVER *ike, void *k, UINT k_size, IKE_HASH *h, IKE_CRYPTO *c, UINT crypto_key_size)
{
 BUF *key_buf;
 IKE_CRYPTO_KEY *ret;

 if (ike == ((void*)0) || k == ((void*)0) || k_size == 0 || h == ((void*)0) || c == ((void*)0) || crypto_key_size == 0)
 {
  return ((void*)0);
 }

 key_buf = IkeExpandKeySize(h, k, k_size, crypto_key_size);
 if (key_buf == ((void*)0))
 {
  return ((void*)0);
 }

 ret = IkeNewKey(c, key_buf->Buf, key_buf->Size);

 FreeBuf(key_buf);

 return ret;
}
