
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mbedtls_sha256_context ;
typedef int * bootloader_sha256_handle_t ;


 int assert (int) ;
 int free (int *) ;
 int mbedtls_sha256_finish_ret (int *,int *) ;
 int mbedtls_sha256_free (int *) ;

void bootloader_sha256_finish(bootloader_sha256_handle_t handle, uint8_t *digest)
{
    assert(handle != ((void*)0));
    mbedtls_sha256_context *ctx = (mbedtls_sha256_context *)handle;
    if (digest != ((void*)0)) {
        int ret = mbedtls_sha256_finish_ret(ctx, digest);
        assert(ret == 0);
    }
    mbedtls_sha256_free(ctx);
    free(handle);
}
