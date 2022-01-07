
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * bootloader_sha256_handle_t ;


 int SHA2_256 ;
 int ctx ;
 int ets_sha_enable () ;
 int ets_sha_init (int *,int ) ;

bootloader_sha256_handle_t bootloader_sha256_start()
{

    ets_sha_enable();
    ets_sha_init(&ctx, SHA2_256);
    return &ctx;
}
