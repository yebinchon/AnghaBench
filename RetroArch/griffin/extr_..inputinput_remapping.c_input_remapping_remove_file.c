
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int directory_input_remapping; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;


 int PATH_MAX_LENGTH ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ filestream_delete (char*) ;
 int fill_pathname_join (char*,int ,char const*,size_t) ;
 int fill_pathname_noext (char*,char*,char*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;

bool input_remapping_remove_file(const char *path)
{
   bool ret = 0;
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);
   char *buf = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   char *remap_file = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   settings_t *settings = config_get_ptr();

   buf[0] = remap_file[0] = '\0';

   fill_pathname_join(buf, settings->paths.directory_input_remapping,
         path, path_size);

   fill_pathname_noext(remap_file, buf, ".rmp", path_size);

   ret = filestream_delete(remap_file) == 0 ? 1 : 0;
   free(buf);
   free(remap_file);
   return ret;
}
