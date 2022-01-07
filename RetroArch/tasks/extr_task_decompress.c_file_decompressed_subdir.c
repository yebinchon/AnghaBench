
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct archive_extract_userdata {TYPE_1__* dec; } ;
typedef int path_dir ;
typedef int path ;
struct TYPE_2__ {char const* subdir; char* callback_error; int target_dir; } ;


 int CALLBACK_ERROR_SIZE ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char const*,int ) ;
 int file_archive_perform_mode (char*,char const*,int const*,unsigned int,int ,int ,int ,struct archive_extract_userdata*) ;
 int fill_pathname_basedir (char*,char*,int) ;
 int fill_pathname_join (char*,int ,char const*,int) ;
 scalar_t__ malloc (int ) ;
 int path_mkdir (char*) ;
 int snprintf (char*,int ,char*,char*) ;
 int strlen (char const*) ;
 char const* strstr (char const*,char const*) ;

__attribute__((used)) static int file_decompressed_subdir(const char *name,
      const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode, uint32_t csize,uint32_t size,
      uint32_t crc32, struct archive_extract_userdata *userdata)
{
   char path_dir[PATH_MAX_LENGTH];
   char path[PATH_MAX_LENGTH];
   size_t name_len = strlen(name);
   char last_char = name[name_len - 1];

   path_dir[0] = path[0] = '\0';


   if (last_char == '/' || last_char == '\\')
      return 1;

   if (strstr(name, userdata->dec->subdir) != name)
      return 1;

   name += strlen(userdata->dec->subdir) + 1;

   fill_pathname_join(path,
         userdata->dec->target_dir, name, sizeof(path));
   fill_pathname_basedir(path_dir, path, sizeof(path_dir));


   if (!path_mkdir(path_dir))
      goto error;

   if (!file_archive_perform_mode(path, valid_exts,
            cdata, cmode, csize, size, crc32, userdata))
      goto error;





   return 1;

error:
   userdata->dec->callback_error = (char*)malloc(CALLBACK_ERROR_SIZE);
   snprintf(userdata->dec->callback_error,
         CALLBACK_ERROR_SIZE, "Failed to deflate %s.\n", path);

   return 0;
}
