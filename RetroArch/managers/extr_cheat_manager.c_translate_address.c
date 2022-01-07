
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_memory_buffers; unsigned int* memory_size_list; unsigned char** memory_buf_list; } ;


 TYPE_1__ cheat_manager_state ;

__attribute__((used)) static unsigned translate_address(unsigned address, unsigned char **curr)
{
   unsigned offset = 0;
   unsigned i = 0;

   for (i = 0; i < cheat_manager_state.num_memory_buffers; i++)
   {
      if ((address >= offset) && (address < offset + cheat_manager_state.memory_size_list[i]))
      {
         *curr = cheat_manager_state.memory_buf_list[i];
         break;
      }
      else
         offset += cheat_manager_state.memory_size_list[i];
   }

   return offset;
}
