
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX_LENGTH ;
 int fill_pathname_application_dir (char*,int) ;
 int fill_pathname_home_dir (char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int path_char_is_slash (char const) ;
 char const* path_default_slash () ;
 int retro_assert (int) ;
 int string_is_empty (char const*) ;
 size_t strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char const* strstr (char const*,char const*) ;

void fill_pathname_abbreviate_special(char *out_path,
      const char *in_path, size_t size)
{
   retro_assert(strlcpy(out_path, in_path, size) < size);
}
