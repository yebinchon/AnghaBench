
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_MACHINE_800 ;
 scalar_t__ Atari800_machine_type ;
 int MEMORY_axlon_num_banks ;
 scalar_t__ Util_realloc (int *,int) ;
 int axlon_current_bankmask ;
 int * axlon_ram ;
 int free (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void alloc_axlon_memory(void){
 if (MEMORY_axlon_num_banks > 0 && Atari800_machine_type == Atari800_MACHINE_800) {
  int size = MEMORY_axlon_num_banks * 0x4000;
  if (axlon_ram == ((void*)0) || axlon_current_bankmask != MEMORY_axlon_num_banks - 1) {
   axlon_current_bankmask = MEMORY_axlon_num_banks - 1;
   axlon_ram = (UBYTE *)Util_realloc(axlon_ram, size);
  }
  memset(axlon_ram, 0, size);
 } else {
  if (axlon_ram != ((void*)0)) {
   free(axlon_ram);
   axlon_ram = ((void*)0);
   axlon_current_bankmask = 0;
  }
 }
}
