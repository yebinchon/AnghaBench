
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 size_t* s_slot_width ;

size_t sdmmc_host_get_slot_width(int slot)
{
    assert( slot == 0 || slot == 1 );
    return s_slot_width[slot];
}
