
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;
typedef int * bootloader_sha256_handle_t ;


 scalar_t__ malloc (int) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts_ret (int *,int) ;

bootloader_sha256_handle_t bootloader_sha256_start(void)
{
    mbedtls_sha256_context *ctx = (mbedtls_sha256_context *)malloc(sizeof(mbedtls_sha256_context));
    if (!ctx) {
        return ((void*)0);
    }
    mbedtls_sha256_init(ctx);
    int ret = mbedtls_sha256_starts_ret(ctx, 0);
    if (ret != 0) {
        return ((void*)0);
    }
    return ctx;
}
