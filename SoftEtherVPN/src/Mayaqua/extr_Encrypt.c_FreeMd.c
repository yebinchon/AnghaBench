
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Ctx; scalar_t__ IsHMac; } ;
typedef TYPE_1__ MD ;


 int EVP_MD_CTX_destroy (TYPE_1__*) ;
 int EVP_MD_CTX_free (TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int HMAC_CTX_cleanup (TYPE_1__*) ;
 int HMAC_CTX_free (TYPE_1__*) ;

void FreeMd(MD *md)
{

 if (md == ((void*)0))
 {
  return;
 }

 if (md->Ctx != ((void*)0))
 {
  if (md->IsHMac)
  {



   HMAC_CTX_cleanup(md->Ctx);
   Free(md->Ctx);

  }
  else
  {



   EVP_MD_CTX_destroy(md->Ctx);

  }
 }

 Free(md);
}
