
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_BLOCKSIZE ;
 scalar_t__ SOC_EXTRAM_DATA_LOW ;
 int assert (int) ;
 int cache_sram_mmu_set (int,int ,scalar_t__,int,int,int) ;

__attribute__((used)) static void set_bank(int virt_bank, int phys_bank, int ct)
{
    int r;
    r = cache_sram_mmu_set( 0, 0, SOC_EXTRAM_DATA_LOW + CACHE_BLOCKSIZE * virt_bank, phys_bank * CACHE_BLOCKSIZE, 32, ct );
    assert(r == 0);
    r = cache_sram_mmu_set( 1, 0, SOC_EXTRAM_DATA_LOW + CACHE_BLOCKSIZE * virt_bank, phys_bank * CACHE_BLOCKSIZE, 32, ct );
    assert(r == 0);
}
