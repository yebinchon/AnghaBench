
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * spi_handle (int) ;

__attribute__((used)) static bool is_slot_initialized(int slot)
{
    return spi_handle(slot) != ((void*)0);
}
