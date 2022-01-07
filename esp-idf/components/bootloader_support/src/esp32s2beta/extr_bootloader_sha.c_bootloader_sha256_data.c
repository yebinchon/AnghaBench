
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * bootloader_sha256_handle_t ;


 int assert (int) ;
 int ctx ;
 int ets_sha_update (int *,void const*,size_t,int) ;

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len)
{
    assert(handle != ((void*)0));
    assert(data_len % 4 == 0);
    ets_sha_update(&ctx, data, data_len, 0);
}
