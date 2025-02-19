
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_keybind {scalar_t__ valid; } ;
struct TYPE_6__ {char* input_joypad_driver; } ;
struct TYPE_5__ {char* directory_autoconfig; } ;
struct TYPE_7__ {TYPE_2__ arrays; TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;
typedef scalar_t__ int32_t ;
typedef int config_file_t ;


 int PATH_MAX_LENGTH ;
 unsigned int RARCH_FIRST_META_KEY ;
 int config_file_free (int *) ;
 int * config_file_new_alloc () ;
 int * config_file_new_from_path_to_string (char*) ;
 int config_file_write (int *,char*,int) ;
 TYPE_3__* config_get_ptr () ;
 int config_set_int (int *,char*,scalar_t__) ;
 int config_set_string (int *,char*,char const*) ;
 int fill_pathname_join (char*,char const*,char const*,size_t) ;
 int fill_pathname_noext (char*,char*,char*,size_t) ;
 int free (char*) ;
 int input_config_bind_map_get_base (unsigned int) ;
 struct retro_keybind** input_config_binds ;
 char const* input_config_get_device_name (unsigned int) ;
 scalar_t__ input_config_get_pid (unsigned int) ;
 scalar_t__ input_config_get_vid (unsigned int) ;
 int input_config_save_keybind (int *,char*,int ,struct retro_keybind const*,int) ;
 scalar_t__* invalid_filename_chars ;
 scalar_t__ malloc (int) ;
 scalar_t__ path_is_directory (char*) ;
 char* strdup (char const*) ;
 char* strstr (char*,scalar_t__) ;

bool config_save_autoconf_profile(const char *path, unsigned user)
{
   unsigned i;
   config_file_t *conf = ((void*)0);
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);
   int32_t pid_user = 0;
   int32_t vid_user = 0;
   bool ret = 0;
   settings_t *settings = config_get_ptr();
   const char *autoconf_dir = settings->paths.directory_autoconfig;
   const char *joypad_ident = settings->arrays.input_joypad_driver;
   char *buf = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   char *autoconf_file = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   char *path_new = strdup(path);
   buf[0] = autoconf_file[0] = '\0';

   for (i = 0; invalid_filename_chars[i]; i++)
   {
      while (1)
      {
         char *tmp = strstr(path_new, invalid_filename_chars[i]);

         if (tmp)
            *tmp = '_';
         else
            break;
      }
   }

   path = path_new;

   fill_pathname_join(buf, autoconf_dir, joypad_ident, path_size);

   if (path_is_directory(buf))
   {
      char *buf_new = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      buf_new[0] = '\0';

      fill_pathname_join(buf_new, buf,
            path, path_size);
      fill_pathname_noext(autoconf_file, buf_new,
            ".cfg",
            path_size);

      free(buf_new);
   }
   else
   {
      fill_pathname_join(buf, autoconf_dir,
            path, path_size);
      fill_pathname_noext(autoconf_file, buf,
            ".cfg",
            path_size);
   }

   free(buf);
   free(path_new);

   conf = config_file_new_from_path_to_string(autoconf_file);

   if (!conf)
   {
      conf = config_file_new_alloc();
      if (!conf)
      {
         free(autoconf_file);
         return 0;
      }
   }

   config_set_string(conf, "input_driver",
         joypad_ident);
   config_set_string(conf, "input_device",
         input_config_get_device_name(user));

   pid_user = input_config_get_pid(user);
   vid_user = input_config_get_vid(user);

   if (pid_user && vid_user)
   {
      config_set_int(conf, "input_vendor_id",
            vid_user);
      config_set_int(conf, "input_product_id",
            pid_user);
   }

   for (i = 0; i < RARCH_FIRST_META_KEY; i++)
   {
      const struct retro_keybind *bind = &input_config_binds[user][i];
      if (bind->valid)
         input_config_save_keybind(
               conf, "input", input_config_bind_map_get_base(i),
               bind, 0);
   }

   ret = config_file_write(conf, autoconf_file, 0);

   config_file_free(conf);
   free(autoconf_file);
   return ret;
}
