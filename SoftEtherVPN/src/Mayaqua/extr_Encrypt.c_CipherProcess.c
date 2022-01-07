
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Ctx; int Encrypt; scalar_t__ IsNullCipher; } ;
typedef TYPE_1__ CIPHER ;


 int Copy (void*,void*,int) ;
 scalar_t__ EVP_CipherFinal (int ,int *,int*) ;
 scalar_t__ EVP_CipherInit (int ,int *,int *,void*,int ) ;
 scalar_t__ EVP_CipherUpdate (int ,void*,int*,void*,int) ;

UINT CipherProcess(CIPHER *c, void *iv, void *dest, void *src, UINT size)
{
 int r = size;
 int r2 = 0;
 if (c != ((void*)0) && c->IsNullCipher)
 {
  if (dest != src)
  {
   Copy(dest, src, size);
  }
  return size;
 }

 if (c == ((void*)0) || iv == ((void*)0) || dest == ((void*)0) || src == ((void*)0) || size == 0)
 {
  return 0;
 }

 if (EVP_CipherInit(c->Ctx, ((void*)0), ((void*)0), iv, c->Encrypt) == 0)
 {
  return 0;
 }

 if (EVP_CipherUpdate(c->Ctx, dest, &r, src, size) == 0)
 {
  return 0;
 }

 if (EVP_CipherFinal(c->Ctx, ((UCHAR *)dest) + (UINT)r, &r2) == 0)
 {
  return 0;
 }

 return r + r2;
}
