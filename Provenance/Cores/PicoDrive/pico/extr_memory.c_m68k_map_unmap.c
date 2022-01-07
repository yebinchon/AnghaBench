
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uptr ;


 int M68K_MEM_SHIFT ;
 int volatile MAP_FLAG ;
 int* m68k_read16_map ;
 int* m68k_read8_map ;
 scalar_t__ m68k_unmapped_read16 ;
 scalar_t__ m68k_unmapped_read8 ;
 scalar_t__ m68k_unmapped_write16 ;
 scalar_t__ m68k_unmapped_write8 ;
 int* m68k_write16_map ;
 int* m68k_write8_map ;

void m68k_map_unmap(int start_addr, int end_addr)
{



  volatile

  uptr addr;
  int shift = M68K_MEM_SHIFT;
  int i;

  addr = (uptr)m68k_unmapped_read8;
  for (i = start_addr >> shift; i <= end_addr >> shift; i++)
    m68k_read8_map[i] = (addr >> 1) | MAP_FLAG;

  addr = (uptr)m68k_unmapped_read16;
  for (i = start_addr >> shift; i <= end_addr >> shift; i++)
    m68k_read16_map[i] = (addr >> 1) | MAP_FLAG;

  addr = (uptr)m68k_unmapped_write8;
  for (i = start_addr >> shift; i <= end_addr >> shift; i++)
    m68k_write8_map[i] = (addr >> 1) | MAP_FLAG;

  addr = (uptr)m68k_unmapped_write16;
  for (i = start_addr >> shift; i <= end_addr >> shift; i++)
    m68k_write16_map[i] = (addr >> 1) | MAP_FLAG;
}
