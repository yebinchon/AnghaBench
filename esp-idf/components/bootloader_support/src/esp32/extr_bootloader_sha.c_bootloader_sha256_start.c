
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bootloader_sha256_handle_t ;


 int ets_sha_enable () ;
 scalar_t__ words_hashed ;

bootloader_sha256_handle_t bootloader_sha256_start(void)
{

    ets_sha_enable();
    words_hashed = 0;
    return (bootloader_sha256_handle_t)&words_hashed;
}
