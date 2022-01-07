
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbedtls_sha512 (unsigned char const*,size_t,unsigned char*,int ) ;

__attribute__((used)) static void sha512_wrap( const unsigned char *input, size_t ilen,
                    unsigned char *output )
{
    mbedtls_sha512( input, ilen, output, 0 );
}
