
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Ctx; } ;
typedef TYPE_1__ CIPHER ;


 int EVP_CIPHER_CTX_cleanup (TYPE_1__*) ;
 int EVP_CIPHER_CTX_free (TYPE_1__*) ;
 int Free (TYPE_1__*) ;

void FreeCipher(CIPHER *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 if (c->Ctx != ((void*)0))
 {



  EVP_CIPHER_CTX_cleanup(c->Ctx);
  Free(c->Ctx);

 }

 Free(c);
}
