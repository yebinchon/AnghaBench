
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_short ;


 int PATH_MAX_LENGTH ;
 int fill_pathname (char*,int ,char*,int) ;
 int path_basename (char const*) ;
 size_t strlcpy (char*,char*,size_t) ;

size_t fill_short_pathname_representation(char* out_rep,
      const char *in_path, size_t size)
{
   char path_short[PATH_MAX_LENGTH];

   path_short[0] = '\0';

   fill_pathname(path_short, path_basename(in_path), "",
            sizeof(path_short));

   return strlcpy(out_rep, path_short, size);
}
