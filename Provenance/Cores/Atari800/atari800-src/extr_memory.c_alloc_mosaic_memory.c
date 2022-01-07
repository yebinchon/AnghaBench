
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_800 ;
 scalar_t__ Atari800_machine_type ;
 int MEMORY_mosaic_num_banks ;
 scalar_t__ Util_realloc (int *,int) ;
 int free (int *) ;
 int memset (int *,int ,int) ;
 int mosaic_current_num_banks ;
 int * mosaic_ram ;

__attribute__((used)) static void alloc_mosaic_memory(void){
 if (MEMORY_mosaic_num_banks > 0 && Atari800_machine_type == Atari800_MACHINE_800) {
  int size = MEMORY_mosaic_num_banks * 0x1000;
  if (mosaic_ram == ((void*)0) || mosaic_current_num_banks != MEMORY_mosaic_num_banks) {
   mosaic_current_num_banks = MEMORY_mosaic_num_banks;
   mosaic_ram = (UBYTE *)Util_realloc(mosaic_ram, size);
  }
  memset(mosaic_ram, 0, size);
 } else {
  if (mosaic_ram != ((void*)0)) {
   free(mosaic_ram);
   mosaic_ram = ((void*)0);
   mosaic_current_num_banks = 0;
  }
 }
}
