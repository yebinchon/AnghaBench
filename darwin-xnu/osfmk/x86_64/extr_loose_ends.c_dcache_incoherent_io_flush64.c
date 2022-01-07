
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr64_t ;


 void dcache_incoherent_io_store64 (int ,unsigned int) ;

void dcache_incoherent_io_flush64(addr64_t pa, unsigned int count)
{
    return(dcache_incoherent_io_store64(pa,count));
}
