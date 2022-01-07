
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {scalar_t__ size; } ;
struct retro_subsystem_info {scalar_t__ num_roms; char* desc; } ;


 int MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT ;
 int RARCH_PATH_SUBSYSTEM ;
 int free (char*) ;
 struct retro_subsystem_info* libretro_find_subsystem_info (struct retro_subsystem_info const*,unsigned int,char*) ;
 scalar_t__ malloc (size_t) ;
 int msg_hash_to_str (int ) ;
 char* path_get (int ) ;
 struct string_list* path_get_subsystem_list () ;
 int snprintf (char*,size_t,char*,char*,...) ;
 char* strdup (char*) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static const struct
retro_subsystem_info *content_file_init_subsystem(
      const struct retro_subsystem_info *subsystem_data,
      size_t subsystem_current_count,
      char **error_string,
      bool *ret)
{
   size_t path_size = 1024 * sizeof(char);
   char *msg = (char*)malloc(path_size);
   struct string_list *subsystem = path_get_subsystem_list();
   const struct retro_subsystem_info *special = libretro_find_subsystem_info(
            subsystem_data, (unsigned)subsystem_current_count,
            path_get(RARCH_PATH_SUBSYSTEM));

   msg[0] = '\0';

   if (!special)
   {
      snprintf(msg, path_size,
            "Failed to find subsystem \"%s\" in libretro implementation.\n",
            path_get(RARCH_PATH_SUBSYSTEM));
      *error_string = strdup(msg);
      goto error;
   }

   if (special->num_roms && !subsystem)
   {
      strlcpy(msg,
            msg_hash_to_str(MSG_ERROR_LIBRETRO_CORE_REQUIRES_SPECIAL_CONTENT),
            path_size
            );
      *error_string = strdup(msg);
      goto error;
   }
   else if (special->num_roms && (special->num_roms != subsystem->size))
   {
      snprintf(msg,
            path_size,
            "Libretro core requires %u content files for "
            "subsystem \"%s\", but %u content files were provided.\n",
            special->num_roms, special->desc,
            (unsigned)subsystem->size);
      *error_string = strdup(msg);
      goto error;
   }
   else if (!special->num_roms && subsystem && subsystem->size)
   {
      snprintf(msg,
            path_size,
            "Libretro core takes no content for subsystem \"%s\", "
            "but %u content files were provided.\n",
            special->desc,
            (unsigned)subsystem->size);
      *error_string = strdup(msg);
      goto error;
   }

   *ret = 1;
   free(msg);
   return special;

error:
   *ret = 0;
   free(msg);
   return ((void*)0);
}
