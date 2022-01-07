
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int example_print_chip_info () ;
 int example_print_flash_encryption_status () ;
 int example_read_write_flash () ;
 int printf (char*) ;

void app_main(void)
{
    printf("\nExample to check Flash Encryption status\n");

    example_print_chip_info();
    example_print_flash_encryption_status();
    example_read_write_flash();
}
