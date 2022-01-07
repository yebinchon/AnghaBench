
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbedtls_sha512_ret (unsigned char const*,unsigned long long,unsigned char*,int ) ;

int
crypto_hash_sha512(unsigned char *out, const unsigned char *in,
                   unsigned long long inlen)
{
    return mbedtls_sha512_ret(in, inlen, out, 0);
}
