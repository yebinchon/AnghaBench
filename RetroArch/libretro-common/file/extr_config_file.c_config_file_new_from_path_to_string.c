
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int64_t ;
typedef int config_file_t ;


 int * config_file_new_from_string (char const*,char const*) ;
 scalar_t__ filestream_read_file (char const*,void**,scalar_t__*) ;
 int free (void*) ;
 scalar_t__ path_is_valid (char const*) ;

config_file_t *config_file_new_from_path_to_string(const char *path)
{
   int64_t length = 0;
   uint8_t *ret_buf = ((void*)0);
   config_file_t *conf = ((void*)0);

   if (path_is_valid(path))
   {
      if (filestream_read_file(path, (void**)&ret_buf, &length))
      {
         if (length >= 0)
            conf = config_file_new_from_string((const char*)ret_buf, path);
         if ((void*)ret_buf)
            free((void*)ret_buf);
      }
   }

   return conf;
}
