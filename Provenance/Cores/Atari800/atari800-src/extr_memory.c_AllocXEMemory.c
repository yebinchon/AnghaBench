
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int UBYTE ;


 int MEMORY_ram_size ;
 scalar_t__ Util_malloc (scalar_t__) ;
 int * atarixe_memory ;
 scalar_t__ atarixe_memory_size ;
 int free (int *) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static void AllocXEMemory(void)
{
 if (MEMORY_ram_size > 64) {


  ULONG size = (1 + (MEMORY_ram_size - 64) / 16) * 16384;
  if (size != atarixe_memory_size) {
   if (atarixe_memory != ((void*)0))
    free(atarixe_memory);
   atarixe_memory = (UBYTE *) Util_malloc(size);
   atarixe_memory_size = size;
   memset(atarixe_memory, 0, size);
  }
 }

 else if (atarixe_memory != ((void*)0)) {
  free(atarixe_memory);
  atarixe_memory = ((void*)0);
  atarixe_memory_size = 0;
 }
}
