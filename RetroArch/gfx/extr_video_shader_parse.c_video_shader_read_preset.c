
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int * config_file_new_from_path_to_string (char const*) ;
 int free (char*) ;
 char* video_shader_read_reference_path (char const*) ;

config_file_t *video_shader_read_preset(const char *path)
{
   config_file_t *conf;
   char *reference = video_shader_read_reference_path(path);
   if (reference)
   {
      conf = config_file_new_from_path_to_string(reference);
      free(reference);
   }
   else
      conf = config_file_new_from_path_to_string(path);

   return conf;
}
