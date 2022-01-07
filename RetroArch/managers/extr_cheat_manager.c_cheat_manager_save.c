
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int key ;
typedef int endian_key ;
typedef int enable_key ;
typedef int desc_key ;
struct TYPE_14__ {int guaranteed_no_duplicates; } ;
typedef TYPE_2__ config_file_t ;
typedef int code_key ;
typedef int cheats_file ;
typedef int buf ;
struct TYPE_13__ {unsigned int handler; unsigned int memory_search_size; unsigned int cheat_type; unsigned int value; unsigned int address; unsigned int address_mask; unsigned int rumble_type; unsigned int rumble_value; unsigned int rumble_port; unsigned int rumble_primary_strength; unsigned int rumble_primary_duration; unsigned int rumble_secondary_strength; unsigned int rumble_secondary_duration; unsigned int repeat_count; unsigned int repeat_add_to_value; unsigned int repeat_add_to_address; int big_endian; int state; int code; int desc; } ;
struct TYPE_12__ {unsigned int size; TYPE_1__* cheats; } ;


 int PATH_MAX_LENGTH ;
 TYPE_11__ cheat_manager_state ;
 int config_file_free (TYPE_2__*) ;
 TYPE_2__* config_file_new_alloc () ;
 TYPE_2__* config_file_new_from_path_to_string (char*) ;
 int config_file_write (TYPE_2__*,char*,int) ;
 int config_set_bool (TYPE_2__*,char*,int ) ;
 int config_set_int (TYPE_2__*,char*,unsigned int) ;
 int config_set_string (TYPE_2__*,char*,int ) ;
 int config_set_uint (TYPE_2__*,char*,unsigned int) ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 int fill_pathname_noext (char*,char*,char*,int) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int string_is_empty (int ) ;
 int strlcpy (char*,char const*,int) ;

bool cheat_manager_save(const char *path, const char *cheat_database, bool overwrite)
{
   bool ret;
   unsigned i;
   char buf[PATH_MAX_LENGTH];
   char cheats_file[PATH_MAX_LENGTH];
   config_file_t *conf = ((void*)0);
   unsigned int* data_ptrs[16] = { ((void*)0)};
   char* keys[16] = {
      (char*)"cheat%u_handler",
      (char*)"cheat%u_memory_search_size",
      (char*)"cheat%u_cheat_type",
      (char*)"cheat%u_value",
      (char*)"cheat%u_address",
      (char*)"cheat%u_address_bit_position",
      (char*)"cheat%u_rumble_type",
      (char*)"cheat%u_rumble_value",
      (char*)"cheat%u_rumble_port",
      (char*)"cheat%u_rumble_primary_strength",
      (char*)"cheat%u_rumble_primary_duration",
      (char*)"cheat%u_rumble_secondary_strength",
      (char*)"cheat%u_rumble_secondary_duration",
      (char*)"cheat%u_repeat_count",
      (char*)"cheat%u_repeat_add_to_value",
      (char*)"cheat%u_repeat_add_to_address"
   };

   buf[0] = cheats_file[0] = '\0';

   if ((!cheat_manager_state.cheats) || cheat_manager_state.size == 0)
      return 0;

   if (!cheat_database)
      strlcpy(cheats_file, path, sizeof(cheats_file));
   else
   {
      fill_pathname_join(buf, cheat_database, path, sizeof(buf));

      fill_pathname_noext(cheats_file, buf, ".cht", sizeof(cheats_file));
   }

   if (!overwrite)
      conf = config_file_new_from_path_to_string(cheats_file);

   if (!conf)
      if (!(conf = config_file_new_alloc()))
         return 0;

   conf->guaranteed_no_duplicates = 1;

   config_set_int(conf, "cheats", cheat_manager_state.size);

   for (i = 0; i < cheat_manager_state.size; i++)
   {
      unsigned j;
      char endian_key[100];
      char key[256];
      char desc_key[256];
      char code_key[256];
      char enable_key[256];

      key[0] = endian_key[0] = desc_key[0] = code_key[0] = enable_key[0] = '\0';

      snprintf(endian_key, sizeof(endian_key), "cheat%u_big_endian", i);
      snprintf(desc_key, sizeof(desc_key), "cheat%u_desc", i);
      snprintf(code_key, sizeof(code_key), "cheat%u_code", i);
      snprintf(enable_key, sizeof(enable_key), "cheat%u_enable", i);

      if (!string_is_empty(cheat_manager_state.cheats[i].desc))
         config_set_string(conf, desc_key, cheat_manager_state.cheats[i].desc);
      else
         config_set_string(conf, desc_key, cheat_manager_state.cheats[i].code);

      config_set_string(conf, code_key, cheat_manager_state.cheats[i].code);
      config_set_bool(conf, enable_key, cheat_manager_state.cheats[i].state);
      config_set_bool(conf, endian_key, cheat_manager_state.cheats[i].big_endian);

      data_ptrs[0] = &cheat_manager_state.cheats[i].handler;
      data_ptrs[1] = &cheat_manager_state.cheats[i].memory_search_size;
      data_ptrs[2] = &cheat_manager_state.cheats[i].cheat_type;
      data_ptrs[3] = &cheat_manager_state.cheats[i].value;
      data_ptrs[4] = &cheat_manager_state.cheats[i].address;
      data_ptrs[5] = &cheat_manager_state.cheats[i].address_mask;
      data_ptrs[6] = &cheat_manager_state.cheats[i].rumble_type;
      data_ptrs[7] = &cheat_manager_state.cheats[i].rumble_value;
      data_ptrs[8] = &cheat_manager_state.cheats[i].rumble_port;
      data_ptrs[9] = &cheat_manager_state.cheats[i].rumble_primary_strength;
      data_ptrs[10] = &cheat_manager_state.cheats[i].rumble_primary_duration;
      data_ptrs[11] = &cheat_manager_state.cheats[i].rumble_secondary_strength;
      data_ptrs[12] = &cheat_manager_state.cheats[i].rumble_secondary_duration;
      data_ptrs[13] = &cheat_manager_state.cheats[i].repeat_count;
      data_ptrs[14] = &cheat_manager_state.cheats[i].repeat_add_to_value;
      data_ptrs[15] = &cheat_manager_state.cheats[i].repeat_add_to_address;

      for (j = 0; j < 16; j++)
      {
         key[0] = '\0';
         snprintf(key, sizeof(key), keys[j], i);
         config_set_uint(conf, key, *(data_ptrs[j]));
      }

   }

   ret = config_file_write(conf, cheats_file, 1);
   config_file_free(conf);

   return ret;
}
