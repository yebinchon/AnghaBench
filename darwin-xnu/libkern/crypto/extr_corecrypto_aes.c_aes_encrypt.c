
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aes_rval ;
typedef int aes_encrypt_ctx ;


 int aes_encrypt_cbc (unsigned char const*,int *,int,unsigned char*,int *) ;

aes_rval aes_encrypt(const unsigned char *in_blk, unsigned char *out_blk, aes_encrypt_ctx cx[1])
{
       return aes_encrypt_cbc(in_blk, ((void*)0), 1, out_blk, cx);
}
