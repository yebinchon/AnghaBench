
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 int mbedtls_md5_starts (int *) ;

__attribute__((used)) static void md5_starts_wrap( void *ctx )
{
    mbedtls_md5_starts( (mbedtls_md5_context *) ctx );
}
