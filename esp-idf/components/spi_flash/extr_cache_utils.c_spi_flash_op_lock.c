
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portMAX_DELAY ;
 int s_flash_op_mutex ;
 int xSemaphoreTakeRecursive (int ,int ) ;

void spi_flash_op_lock(void)
{
    xSemaphoreTakeRecursive(s_flash_op_mutex, portMAX_DELAY);
}
