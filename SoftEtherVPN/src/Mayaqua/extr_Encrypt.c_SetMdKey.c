
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int IsHMac; scalar_t__ Md; int Ctx; } ;
typedef TYPE_1__ MD ;
typedef int EVP_MD ;


 int Debug (char*,int ) ;
 int HMAC_Init_ex (int ,void*,scalar_t__,int const*,int *) ;
 int OpenSSL_Error () ;

bool SetMdKey(MD *md, void *key, UINT key_size)
{

 if (md == ((void*)0) || md->IsHMac == 0 || key == ((void*)0) || key_size == 0)
 {
  return 0;
 }

 if (HMAC_Init_ex(md->Ctx, key, key_size, (const EVP_MD *)md->Md, ((void*)0)) == 0)
 {
  Debug("SetMdKey(): HMAC_Init_ex() failed with error: %s\n", OpenSSL_Error());
  return 0;
 }

 return 1;
}
