
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX_LENGTH ;
 int fill_pathname_abbreviate_special (char*,char const*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ path_char_is_slash (char) ;
 int strlen (char*) ;

bool is_path_accessible_using_standard_io(const char *path)
{
   return 1;

}
