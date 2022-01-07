
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ram_type {int path; int type; } ;
struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ retro_ctx_memory_info_t ;


 int MSG_FAILED_TO_SAVE_SRAM ;
 int MSG_SAVED_SUCCESSFULLY_TO ;
 int MSG_SAVING_RAM_TYPE ;
 int MSG_TO ;
 int RARCH_ERR (char*,int ) ;
 int RARCH_LOG (char*,int ,int ,...) ;
 int RARCH_WARN (char*) ;
 int content_get_memory (TYPE_1__*,struct ram_type*,unsigned int) ;
 int dump_to_file_desperate (int ,int ,int ) ;
 int filestream_write_file (int ,int ,int ) ;
 int msg_hash_to_str (int ) ;

bool content_save_ram_file(unsigned slot)
{
   struct ram_type ram;
   retro_ctx_memory_info_t mem_info;

   if (!content_get_memory(&mem_info, &ram, slot))
      return 0;

   RARCH_LOG("%s #%u %s \"%s\".\n",
         msg_hash_to_str(MSG_SAVING_RAM_TYPE),
         ram.type,
         msg_hash_to_str(MSG_TO),
         ram.path);

   if (!filestream_write_file(
            ram.path, mem_info.data, mem_info.size))
   {
      RARCH_ERR("%s.\n",
            msg_hash_to_str(MSG_FAILED_TO_SAVE_SRAM));
      RARCH_WARN("Attempting to recover ...\n");




      if (!dump_to_file_desperate(
               mem_info.data, mem_info.size, ram.type))
      {
         RARCH_WARN("Failed ... Cannot recover save file.\n");
      }
      return 0;
   }

   RARCH_LOG("%s \"%s\".\n",
         msg_hash_to_str(MSG_SAVED_SUCCESSFULLY_TO),
         ram.path);

   return 1;
}
