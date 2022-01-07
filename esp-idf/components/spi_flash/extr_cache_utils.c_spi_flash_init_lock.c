
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int * s_flash_op_mutex ;
 int * xSemaphoreCreateRecursiveMutex () ;

void spi_flash_init_lock(void)
{
    s_flash_op_mutex = xSemaphoreCreateRecursiveMutex();
    assert(s_flash_op_mutex != ((void*)0));
}
