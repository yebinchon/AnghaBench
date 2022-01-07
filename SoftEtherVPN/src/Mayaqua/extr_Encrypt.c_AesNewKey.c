
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aes_key_st {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int KeySize; void* DecryptKey; void* EncryptKey; int KeyValue; } ;
typedef TYPE_1__ AES_KEY_VALUE ;


 int AES_set_decrypt_key (void*,int,void*) ;
 int AES_set_encrypt_key (void*,int,void*) ;
 int Copy (int ,void*,int) ;
 void* ZeroMalloc (int) ;

AES_KEY_VALUE *AesNewKey(void *data, UINT size)
{
 AES_KEY_VALUE *k;

 if (data == ((void*)0) || (!(size == 16 || size == 24 || size == 32)))
 {
  return ((void*)0);
 }

 k = ZeroMalloc(sizeof(AES_KEY_VALUE));

 k->EncryptKey = ZeroMalloc(sizeof(struct aes_key_st));
 k->DecryptKey = ZeroMalloc(sizeof(struct aes_key_st));

 k->KeySize = size;
 Copy(k->KeyValue, data, size);

 AES_set_encrypt_key(data, size * 8, k->EncryptKey);
 AES_set_decrypt_key(data, size * 8, k->DecryptKey);

 return k;
}
