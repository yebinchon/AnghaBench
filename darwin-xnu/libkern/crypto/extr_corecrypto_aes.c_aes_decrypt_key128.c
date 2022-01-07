
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aes_rval ;
typedef int aes_decrypt_ctx ;


 int aes_decrypt_key (unsigned char const*,int,int *) ;

aes_rval aes_decrypt_key128(const unsigned char *key, aes_decrypt_ctx cx[1])
{
 return aes_decrypt_key(key, 16, cx);
}
