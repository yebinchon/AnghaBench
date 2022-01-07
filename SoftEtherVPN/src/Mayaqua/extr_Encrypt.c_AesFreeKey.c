
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* DecryptKey; struct TYPE_4__* EncryptKey; } ;
typedef TYPE_1__ AES_KEY_VALUE ;


 int Free (TYPE_1__*) ;

void AesFreeKey(AES_KEY_VALUE *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 Free(k->EncryptKey);
 Free(k->DecryptKey);

 Free(k);
}
