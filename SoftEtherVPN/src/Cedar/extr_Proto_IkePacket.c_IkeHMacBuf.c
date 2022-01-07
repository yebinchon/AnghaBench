
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Size; int Buf; } ;
typedef int IKE_HASH ;
typedef TYPE_1__ BUF ;


 int IkeHMac (int *,void*,int ,int ,int ,int ) ;

void IkeHMacBuf(IKE_HASH *h, void *dst, BUF *key, BUF *data)
{

 if (h == ((void*)0) || dst == ((void*)0) || key == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 IkeHMac(h, dst, key->Buf, key->Size, data->Buf, data->Size);
}
