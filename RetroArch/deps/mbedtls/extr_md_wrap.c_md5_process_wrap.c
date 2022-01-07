
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 int mbedtls_md5_process (int *,unsigned char const*) ;

__attribute__((used)) static void md5_process_wrap( void *ctx, const unsigned char *data )
{
    mbedtls_md5_process( (mbedtls_md5_context *) ctx, data );
}
