
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; TYPE_1__* cheats; } ;
struct TYPE_3__ {unsigned int address; unsigned int address_mask; unsigned int memory_search_size; unsigned int value; int big_endian; } ;


 int CHEAT_HANDLER_TYPE_RETRO ;
 int cheat_manager_get_size () ;
 int cheat_manager_realloc (int,int ) ;
 TYPE_2__ cheat_manager_state ;

bool cheat_manager_add_new_code(unsigned int memory_search_size, unsigned int address, unsigned int address_mask,
      bool big_endian, unsigned int value)
{
   int new_size = cheat_manager_get_size() + 1;

   if (!cheat_manager_realloc(new_size, CHEAT_HANDLER_TYPE_RETRO))
      return 0;

   cheat_manager_state.cheats[cheat_manager_state.size - 1].address = address;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].address_mask = address_mask;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].memory_search_size = memory_search_size;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].value = value;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].big_endian = big_endian;

   return 1;
}
