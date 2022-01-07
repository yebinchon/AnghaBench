
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha1_context ;


 int mbedtls_sha1_starts (int *) ;

__attribute__((used)) static void sha1_starts_wrap( void *ctx )
{
    mbedtls_sha1_starts( (mbedtls_sha1_context *) ctx );
}
