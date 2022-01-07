
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int address_mask; scalar_t__ handler; unsigned int address; int cheat_type; unsigned int value; unsigned int repeat_count; unsigned int repeat_add_to_address; scalar_t__ repeat_add_to_value; int big_endian; int memory_search_size; int state; } ;
struct TYPE_3__ {unsigned int size; unsigned char* curr_memory_buf; unsigned int total_memory_size; TYPE_2__* cheats; int big_endian; int memory_initialized; } ;


 scalar_t__ CHEAT_HANDLER_TYPE_RETRO ;







 int cheat_manager_apply_rumble (TYPE_2__*,unsigned int) ;
 int cheat_manager_initialize_memory (int *,int) ;
 int cheat_manager_setup_search_meta (int ,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__ cheat_manager_state ;
 unsigned int translate_address (unsigned int,unsigned char**) ;

void cheat_manager_apply_retro_cheats(void)
{
   unsigned i;
   unsigned int offset;
   unsigned int mask = 0;
   unsigned int bytes_per_item = 1;
   unsigned int bits = 8;
   unsigned int curr_val = 0;
   bool run_cheat = 1;

   if ((!cheat_manager_state.cheats))
      return;

   for (i = 0; i < cheat_manager_state.size; i++)
   {
      unsigned char *curr = ((void*)0);
      bool set_value = 0;
      unsigned int idx = 0;
      unsigned int value_to_set = 0;
      unsigned int repeat_iter = 0;
      unsigned int address_mask = cheat_manager_state.cheats[i].address_mask;

      if (cheat_manager_state.cheats[i].handler != CHEAT_HANDLER_TYPE_RETRO || !cheat_manager_state.cheats[i].state)
         continue;
      if (!cheat_manager_state.memory_initialized)
         cheat_manager_initialize_memory(((void*)0), 0);



      if (!cheat_manager_state.memory_initialized)
         return;

      if (!run_cheat)
      {
         run_cheat = 1;
         continue;
      }
      cheat_manager_setup_search_meta(cheat_manager_state.cheats[i].memory_search_size, &bytes_per_item, &mask, &bits);

      curr = cheat_manager_state.curr_memory_buf;
      idx = cheat_manager_state.cheats[i].address;

      offset = translate_address(idx, &curr);

      switch (bytes_per_item)
      {
         case 2:
            curr_val = cheat_manager_state.big_endian ?
               (*(curr + idx - offset) * 256) + *(curr + idx + 1 - offset) :
               *(curr + idx - offset) + (*(curr + idx + 1 - offset) * 256);
            break;
         case 4:
            curr_val = cheat_manager_state.big_endian ?
               (*(curr + idx - offset) * 256 * 256 * 256) + (*(curr + idx + 1 - offset) * 256 * 256) + (*(curr + idx + 2 - offset) * 256) + *(curr + idx + 3 - offset) :
               *(curr + idx - offset) + (*(curr + idx + 1 - offset) * 256) + (*(curr + idx + 2 - offset) * 256 * 256) + (*(curr + idx + 3 - offset) * 256 * 256 * 256);
            break;
         case 1:
         default:
            curr_val = *(curr + idx - offset);
            break;
      }

      cheat_manager_apply_rumble(&cheat_manager_state.cheats[i], curr_val);

      switch (cheat_manager_state.cheats[i].cheat_type)
      {
         case 128:
            set_value = 1;
            value_to_set = cheat_manager_state.cheats[i].value;
            break;
         case 133:
            set_value = 1;
            value_to_set = curr_val + cheat_manager_state.cheats[i].value;
            break;
         case 134:
            set_value = 1;
            value_to_set = curr_val - cheat_manager_state.cheats[i].value;
            break;
         case 132:
            if (!(curr_val == cheat_manager_state.cheats[i].value))
               run_cheat = 0;
            break;
         case 129:
            if (!(curr_val != cheat_manager_state.cheats[i].value))
               run_cheat = 0;
            break;
         case 130:
            if (!(cheat_manager_state.cheats[i].value < curr_val))
               run_cheat = 0;
            break;
         case 131:
            if (!(cheat_manager_state.cheats[i].value > curr_val))
               run_cheat = 0;
            break;
      }

      if (set_value)
      {
         for (repeat_iter = 1; repeat_iter <= cheat_manager_state.cheats[i].repeat_count; repeat_iter++)
         {
            switch (bytes_per_item)
            {
               case 2:
                  if (cheat_manager_state.cheats[i].big_endian)
                  {
                     *(curr + idx - offset) = (value_to_set >> 8) & 0xFF;
                     *(curr + idx + 1 - offset) = value_to_set & 0xFF;
                  }
                  else
                  {
                     *(curr + idx - offset) = value_to_set & 0xFF;
                     *(curr + idx + 1 - offset) = (value_to_set >> 8) & 0xFF;
                  }
                  break;
               case 4:
                  if (cheat_manager_state.cheats[i].big_endian)
                  {
                     *(curr + idx - offset) = (value_to_set >> 24) & 0xFF;
                     *(curr + idx + 1 - offset) = (value_to_set >> 16) & 0xFF;
                     *(curr + idx + 2 - offset) = (value_to_set >> 8) & 0xFF;
                     *(curr + idx + 3 - offset) = value_to_set & 0xFF;
                  }
                  else
                  {
                     *(curr + idx - offset) = value_to_set & 0xFF;
                     *(curr + idx + 1 - offset) = (value_to_set >> 8) & 0xFF;
                     *(curr + idx + 2 - offset) = (value_to_set >> 16) & 0xFF;
                     *(curr + idx + 3 - offset) = (value_to_set >> 24) & 0xFF;
                  }
                  break;
               case 1:
                  if (bits < 8)
                  {
                     unsigned bitpos;
                     unsigned char val = *(curr + idx - offset);

                     for (bitpos = 0; bitpos < 8; bitpos++)
                     {
                        if ((address_mask >> bitpos) & 0x01)
                        {
                           mask = (~(1 << bitpos) & 0xFF);

                           val = val & mask;

                           val = val | (((value_to_set >> bitpos) & 0x01) << bitpos);
                        }
                     }

                     *(curr + idx - offset) = val;
                  }
                  else
                     *(curr + idx - offset) = value_to_set & 0xFF;
                  break;
               default:
                  *(curr + idx - offset) = value_to_set & 0xFF;
                  break;
            }

            value_to_set += cheat_manager_state.cheats[i].repeat_add_to_value;

            if (mask != 0)
               value_to_set = value_to_set % mask;

            if (bits < 8)
            {
               unsigned int bit_iter;
               for (bit_iter = 0; bit_iter < cheat_manager_state.cheats[i].repeat_add_to_address; bit_iter++)
               {
                  address_mask = (address_mask << mask) & 0xFF;

                  if (address_mask == 0)
                  {
                     address_mask = mask;
                     idx++;
                  }
               }
            }
            else
               idx += (cheat_manager_state.cheats[i].repeat_add_to_address * bytes_per_item);

            idx = idx % cheat_manager_state.total_memory_size;

            offset = translate_address(idx, &curr);
         }
      }
   }
}
