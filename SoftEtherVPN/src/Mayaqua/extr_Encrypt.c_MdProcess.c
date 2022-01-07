
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Ctx; scalar_t__ IsHMac; scalar_t__ IsNullMd; } ;
typedef TYPE_1__ MD ;


 int Debug (char*,int ) ;
 int EVP_DigestFinal_ex (int ,void*,scalar_t__*) ;
 int EVP_DigestUpdate (int ,void*,scalar_t__) ;
 int HMAC_Final (int ,void*,scalar_t__*) ;
 int HMAC_Init_ex (int ,int *,int ,int *,int *) ;
 int HMAC_Update (int ,void*,scalar_t__) ;
 int OpenSSL_Error () ;

UINT MdProcess(MD *md, void *dest, void *src, UINT size)
{
 UINT len = 0;


 if (md == ((void*)0) || md->IsNullMd || dest == ((void*)0) || (src == ((void*)0) && size != 0))
 {
  return 0;
 }

 if (md->IsHMac)
 {

  if (HMAC_Init_ex(md->Ctx, ((void*)0), 0, ((void*)0), ((void*)0)) == 0)
  {
   Debug("MdProcess(): HMAC_Init_ex() failed with error: %s\n", OpenSSL_Error());
   return 0;
  }

  if (HMAC_Update(md->Ctx, src, size) == 0)
  {
   Debug("MdProcess(): HMAC_Update() failed with error: %s\n", OpenSSL_Error());
   return 0;
  }

  if (HMAC_Final(md->Ctx, dest, &len) == 0)
  {
   Debug("MdProcess(): HMAC_Final() failed with error: %s\n", OpenSSL_Error());
  }
 }
 else
 {
  if (EVP_DigestUpdate(md->Ctx, src, size) == 0)
  {
   Debug("MdProcess(): EVP_DigestUpdate() failed with error: %s\n", OpenSSL_Error());
   return 0;
  }

  if (EVP_DigestFinal_ex(md->Ctx, dest, &len) == 0)
  {
   Debug("MdProcess(): EVP_DigestFinal_ex() failed with error: %s\n", OpenSSL_Error());
  }
 }

 return len;
}
