
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aes_rval ;
typedef int aes_encrypt_ctx ;


 int aes_encrypt_key (unsigned char const*,int,int *) ;

aes_rval aes_encrypt_key128(const unsigned char *key, aes_encrypt_ctx cx[1])
{
 return aes_encrypt_key(key, 16, cx);
}
