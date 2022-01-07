
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; int AesKey; int DesKey3; int DesKey2; int DesKey1; } ;
typedef TYPE_1__ IKE_CRYPTO_KEY ;


 int AesFreeKey (int ) ;
 int DesFreeKeyValue (int ) ;
 int Free (TYPE_1__*) ;

void IkeFreeKey(IKE_CRYPTO_KEY *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 DesFreeKeyValue(k->DesKey1);
 DesFreeKeyValue(k->DesKey2);
 DesFreeKeyValue(k->DesKey3);

 AesFreeKey(k->AesKey);

 Free(k->Data);

 Free(k);
}
