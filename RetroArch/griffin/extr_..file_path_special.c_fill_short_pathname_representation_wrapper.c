
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX_LENGTH ;
 int fill_pathname (char*,int ,char*,int) ;
 int fill_short_pathname_representation (char*,char const*,size_t) ;
 char* find_last_slash (char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int path_basename (char const*) ;
 int strlcpy (char*,char*,size_t) ;

void fill_short_pathname_representation_wrapper(char* out_rep,
      const char *in_path, size_t size)
{
   fill_short_pathname_representation(out_rep, in_path, size);
}
