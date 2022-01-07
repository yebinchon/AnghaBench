
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int IsAeadCipher; int Encrypt; int Ctx; scalar_t__ IsNullCipher; } ;
typedef TYPE_1__ CIPHER ;


 int Copy (void*,void*,scalar_t__) ;
 int Debug (char*,...) ;
 int EVP_CIPHER_CTX_ctrl (int ,int ,scalar_t__,void*) ;
 int EVP_CTRL_AEAD_GET_TAG ;
 int EVP_CTRL_AEAD_SET_TAG ;
 int EVP_CipherFinal_ex (int ,int *,int*) ;
 int EVP_CipherInit_ex (int ,int *,int *,int *,void*,int) ;
 int EVP_CipherUpdate (int ,void*,int*,void*,scalar_t__) ;
 int OpenSSL_Error () ;

UINT CipherProcessAead(CIPHER *c, void *iv, void *tag, UINT tag_size, void *dest, void *src, UINT src_size, void *aad, UINT aad_size)
{
 int r = src_size;
 int r2 = 0;

 if (c == ((void*)0))
 {
  return 0;
 }
 else if (c->IsNullCipher)
 {
  Copy(dest, src, src_size);
  return src_size;
 }
 else if (c->IsAeadCipher == 0 || iv == ((void*)0) || tag == ((void*)0) || tag_size == 0 || dest == ((void*)0) || src == ((void*)0) || src_size == 0)
 {
  return 0;
 }

 if (EVP_CipherInit_ex(c->Ctx, ((void*)0), ((void*)0), ((void*)0), iv, c->Encrypt) == 0)
 {
  Debug("CipherProcessAead(): EVP_CipherInit_ex() failed with error: %s\n", OpenSSL_Error());
  return 0;
 }

 if (c->Encrypt == 0)
 {
  if (EVP_CIPHER_CTX_ctrl(c->Ctx, EVP_CTRL_AEAD_SET_TAG, tag_size, tag) == 0)
  {
   Debug("CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to set the tag!\n");
   return 0;
  }
 }

 if (aad != ((void*)0) && aad_size != 0)
 {
  if (EVP_CipherUpdate(c->Ctx, ((void*)0), &r, aad, aad_size) == 0)
  {
   Debug("CipherProcessAead(): EVP_CipherUpdate() failed with error: %s\n", OpenSSL_Error());
   return 0;
  }
 }

 if (EVP_CipherUpdate(c->Ctx, dest, &r, src, src_size) == 0)
 {
  Debug("CipherProcessAead(): EVP_CipherUpdate() failed with error: %s\n", OpenSSL_Error());
  return 0;
 }

 if (EVP_CipherFinal_ex(c->Ctx, ((UCHAR *)dest) + (UINT)r, &r2) == 0)
 {
  Debug("CipherProcessAead(): EVP_CipherFinal_ex() failed with error: %s\n", OpenSSL_Error());
  return 0;
 }

 if (c->Encrypt)
 {
  if (EVP_CIPHER_CTX_ctrl(c->Ctx, EVP_CTRL_AEAD_GET_TAG, tag_size, tag) == 0)
  {
   Debug("CipherProcessAead(): EVP_CIPHER_CTX_ctrl() failed to get the tag!\n");
   return 0;
  }
 }

 return r + r2;
}
