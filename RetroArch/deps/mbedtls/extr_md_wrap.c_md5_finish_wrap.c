
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 int mbedtls_md5_finish (int *,unsigned char*) ;

__attribute__((used)) static void md5_finish_wrap( void *ctx, unsigned char *output )
{
    mbedtls_md5_finish( (mbedtls_md5_context *) ctx, output );
}
