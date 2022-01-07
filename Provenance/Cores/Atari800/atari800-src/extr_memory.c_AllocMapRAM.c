
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_XLXE ;
 scalar_t__ Atari800_machine_type ;
 scalar_t__ MEMORY_enable_mapram ;
 int MEMORY_ram_size ;
 scalar_t__ Util_malloc (int) ;
 int free (int *) ;
 int * mapram_memory ;

__attribute__((used)) static void AllocMapRAM(void)
{
 if (MEMORY_enable_mapram && Atari800_machine_type == Atari800_MACHINE_XLXE
     && MEMORY_ram_size > 20) {
  if (mapram_memory == ((void*)0))
   mapram_memory = (UBYTE *)Util_malloc(0x800);
 }
 else if (mapram_memory != ((void*)0)) {
  free(mapram_memory);
  mapram_memory = ((void*)0);
 }
}
