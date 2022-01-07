
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_path ;


 int PATH_MAX_LENGTH ;
 int fill_pathname_noext (char*,char*,char const*,size_t) ;
 int path_basename (char*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strrchr (int ,char) ;

void fill_pathname(char *out_path, const char *in_path,
      const char *replace, size_t size)
{
   char tmp_path[PATH_MAX_LENGTH];
   char *tok = ((void*)0);

   tmp_path[0] = '\0';

   strlcpy(tmp_path, in_path, sizeof(tmp_path));
   if ((tok = (char*)strrchr(path_basename(tmp_path), '.')))
      *tok = '\0';

   fill_pathname_noext(out_path, tmp_path, replace, size);
}
