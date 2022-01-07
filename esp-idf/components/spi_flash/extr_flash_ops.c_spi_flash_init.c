
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spi_flash_init_lock () ;
 int spi_flash_reset_counters () ;

void spi_flash_init(void)
{
    spi_flash_init_lock();



}
