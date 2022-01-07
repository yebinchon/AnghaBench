
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct evp_cipher_ctx_st {int dummy; } ;
struct TYPE_4__ {int IsNullCipher; int IsAeadCipher; int * Cipher; int IvSize; int KeySize; int BlockSize; void* Ctx; int Name; } ;
typedef TYPE_1__ CIPHER ;


 int Debug (char*,int ) ;
 int EVP_CIPHER_CTX_init (void*) ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_block_size (int *) ;
 int EVP_CIPHER_flags (int *) ;
 int EVP_CIPHER_iv_length (int *) ;
 int EVP_CIPHER_key_length (int *) ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 int * EVP_get_cipherbyname (int ) ;
 int FreeCipher (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 void* ZeroMalloc (int) ;

CIPHER *NewCipher(char *name)
{
 CIPHER *c;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(CIPHER));

 StrCpy(c->Name, sizeof(c->Name), name);

 if (StrCmpi(name, "[null-cipher]") == 0 ||
  StrCmpi(name, "NULL") == 0 ||
  IsEmptyStr(name))
 {
  c->IsNullCipher = 1;
  return c;
 }

 c->Cipher = EVP_get_cipherbyname(c->Name);
 if (c->Cipher == ((void*)0))
 {
  Debug("NewCipher(): Cipher %s not found by EVP_get_cipherbyname().\n", c->Name);
  FreeCipher(c);
  return ((void*)0);
 }




 c->Ctx = ZeroMalloc(sizeof(struct evp_cipher_ctx_st));
 EVP_CIPHER_CTX_init(c->Ctx);


 c->IsAeadCipher = EVP_CIPHER_flags(c->Cipher) & EVP_CIPH_FLAG_AEAD_CIPHER;
 c->BlockSize = EVP_CIPHER_block_size(c->Cipher);
 c->KeySize = EVP_CIPHER_key_length(c->Cipher);
 c->IvSize = EVP_CIPHER_iv_length(c->Cipher);

 return c;
}
