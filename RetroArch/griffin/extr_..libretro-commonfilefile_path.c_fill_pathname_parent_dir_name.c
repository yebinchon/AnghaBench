
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* find_last_slash (char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

bool fill_pathname_parent_dir_name(char *out_dir,
      const char *in_dir, size_t size)
{
   bool success = 0;
   char *temp = strdup(in_dir);
   char *last = find_last_slash(temp);

   if (last && last[1] == 0)
   {
      *last = '\0';
      last = find_last_slash(temp);
   }

   if (last)
      *last = '\0';

   in_dir = find_last_slash(temp);

   success = in_dir && in_dir[1];

   if (success)
      strlcpy(out_dir, in_dir + 1, size);

   free(temp);
   return success;
}
