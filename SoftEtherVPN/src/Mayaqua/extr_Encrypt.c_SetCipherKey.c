
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsNullCipher; int Encrypt; int Cipher; int * Ctx; } ;
typedef TYPE_1__ CIPHER ;


 int EVP_CipherInit (int *,int ,void*,int *,int) ;

void SetCipherKey(CIPHER *c, void *key, bool enc)
{

 if (c == ((void*)0) || key == ((void*)0))
 {
  return;
 }

 if (c->IsNullCipher == 0)
 {
  if (c->Ctx != ((void*)0))
  {
   EVP_CipherInit(c->Ctx, c->Cipher, key, ((void*)0), enc);
  }
 }

 c->Encrypt = enc;
}
