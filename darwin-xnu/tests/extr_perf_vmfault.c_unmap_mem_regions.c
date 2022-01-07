
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMSIZE ;
 scalar_t__ SOFT_FAULT ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int memblock ;
 int memblock_share ;
 int munmap (int ,int ) ;
 scalar_t__ test_type ;

__attribute__((used)) static void unmap_mem_regions(void)
{
 if (test_type == SOFT_FAULT) {
  T_QUIET; T_ASSERT_MACH_SUCCESS(munmap(memblock_share, MEMSIZE), "munmap");
 }
 T_QUIET; T_ASSERT_MACH_SUCCESS(munmap(memblock, MEMSIZE), "munmap");
}
