
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;
typedef int * bootloader_sha256_handle_t ;


 int assert (int) ;
 int mbedtls_sha256_update_ret (int *,void const*,size_t) ;

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len)
{
    assert(handle != ((void*)0));
    mbedtls_sha256_context *ctx = (mbedtls_sha256_context *)handle;
    int ret = mbedtls_sha256_update_ret(ctx, data, data_len);
    assert(ret == 0);
}
