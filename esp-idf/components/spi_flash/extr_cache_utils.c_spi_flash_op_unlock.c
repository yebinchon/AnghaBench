
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_flash_op_mutex ;
 int xSemaphoreGiveRecursive (int ) ;

void spi_flash_op_unlock(void)
{
    xSemaphoreGiveRecursive(s_flash_op_mutex);
}
