
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg ;
typedef enum cheat_search_type { ____Placeholder_cheat_search_type } cheat_search_type ;
struct TYPE_2__ {unsigned char* curr_memory_buf; unsigned char* prev_memory_buf; unsigned int num_memory_buffers; unsigned int total_memory_size; unsigned int* matches; unsigned int search_exact_value; scalar_t__ num_matches; scalar_t__* memory_size_list; int * memory_buf_list; int search_eqminus_value; int search_eqplus_value; int big_endian; int search_bit_size; } ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEAT_SEARCH_FOUND_MATCHES ;
 int MSG_CHEAT_SEARCH_NOT_INITIALIZED ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int cheat_manager_setup_search_meta (int ,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__ cheat_manager_state ;
 int memcpy (unsigned char*,int ,scalar_t__) ;
 int memset (unsigned int*,int ,unsigned int) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;
 char* msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 unsigned int translate_address (unsigned int,unsigned char**) ;

__attribute__((used)) static int cheat_manager_search(enum cheat_search_type search_type)
{
   char msg[100];
   unsigned char *curr = cheat_manager_state.curr_memory_buf;
   unsigned char *prev = cheat_manager_state.prev_memory_buf;
   unsigned int idx = 0;
   unsigned int curr_val = 0;
   unsigned int prev_val = 0;
   unsigned int mask = 0;
   unsigned int bytes_per_item = 1;
   unsigned int bits = 8;
   unsigned int offset = 0;
   unsigned int i = 0;
   bool refresh = 0;

   if (cheat_manager_state.num_memory_buffers == 0)
   {
      runloop_msg_queue_push(msg_hash_to_str(MSG_CHEAT_SEARCH_NOT_INITIALIZED), 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      return 0;
   }

   cheat_manager_setup_search_meta(cheat_manager_state.search_bit_size, &bytes_per_item, &mask, &bits);


   for (idx = 0; idx < cheat_manager_state.total_memory_size; idx = idx + bytes_per_item)
   {
      unsigned byte_part;

      offset = translate_address(idx, &curr);

      switch (bytes_per_item)
      {
         case 2:
            curr_val = cheat_manager_state.big_endian ?
               (*(curr + idx - offset) * 256) + *(curr + idx + 1 - offset) :
               *(curr + idx - offset) + (*(curr + idx + 1 - offset) * 256);
            prev_val = cheat_manager_state.big_endian ?
               (*(prev + idx) * 256) + *(prev + idx + 1) :
               *(prev + idx) + (*(prev + idx + 1) * 256);
            break;
         case 4:
            curr_val = cheat_manager_state.big_endian ?
               (*(curr + idx - offset) * 256 * 256 * 256) + (*(curr + idx + 1 - offset) * 256 * 256) + (*(curr + idx + 2 - offset) * 256) + *(curr + idx + 3 - offset) :
               *(curr + idx - offset) + (*(curr + idx + 1 - offset) * 256) + (*(curr + idx + 2 - offset) * 256 * 256) + (*(curr + idx + 3 - offset) * 256 * 256 * 256);
            prev_val = cheat_manager_state.big_endian ?
               (*(prev + idx) * 256 * 256 * 256) + (*(prev + idx + 1) * 256 * 256) + (*(prev + idx + 2) * 256) + *(prev + idx + 3) :
               *(prev + idx) + (*(prev + idx + 1) * 256) + (*(prev + idx + 2) * 256 * 256) + (*(prev + idx + 3) * 256 * 256 * 256);
            break;
         case 1:
         default:
            curr_val = *(curr - offset + idx);
            prev_val = *(prev + idx);
            break;
      }

      for (byte_part = 0; byte_part < 8 / bits; byte_part++)
      {
         unsigned int curr_subval = (curr_val >> (byte_part * bits)) & mask;
         unsigned int prev_subval = (prev_val >> (byte_part * bits)) & mask;
         unsigned int prev_match;

         if (bits < 8)
            prev_match = *(cheat_manager_state.matches + idx) & (mask << (byte_part * bits));
         else
            prev_match = *(cheat_manager_state.matches + idx);

         if (prev_match > 0)
         {
            bool match = 0;
            switch (search_type)
            {
               case 133:
                  match = (curr_subval == cheat_manager_state.search_exact_value);
                  break;
               case 130:
                  match = (curr_subval < prev_subval);
                  break;
               case 132:
                  match = (curr_subval > prev_subval);
                  break;
               case 129:
                  match = (curr_subval <= prev_subval);
                  break;
               case 131:
                  match = (curr_subval >= prev_subval);
                  break;
               case 136:
                  match = (curr_subval == prev_subval);
                  break;
               case 128:
                  match = (curr_subval != prev_subval);
                  break;
               case 134:
                  match = (curr_subval == prev_subval + cheat_manager_state.search_eqplus_value);
                  break;
               case 135:
                  match = (curr_subval == prev_subval - cheat_manager_state.search_eqminus_value);
                  break;
            }

            if (!match)
            {
               if (bits < 8)
                  *(cheat_manager_state.matches + idx) = *(cheat_manager_state.matches + idx) &
                     ((~(mask << (byte_part * bits))) & 0xFF);
               else
                  memset(cheat_manager_state.matches + idx, 0, bytes_per_item);
               if (cheat_manager_state.num_matches > 0)
                  cheat_manager_state.num_matches--;
            }
         }
      }
   }

   offset = 0;

   for (i = 0; i < cheat_manager_state.num_memory_buffers; i++)
   {
      memcpy(cheat_manager_state.prev_memory_buf + offset, cheat_manager_state.memory_buf_list[i], cheat_manager_state.memory_size_list[i]);
      offset += cheat_manager_state.memory_size_list[i];
   }

   snprintf(msg, sizeof(msg), msg_hash_to_str(MSG_CHEAT_SEARCH_FOUND_MATCHES), cheat_manager_state.num_matches);
   msg[sizeof(msg) - 1] = 0;

   runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);





   return 0;
}
