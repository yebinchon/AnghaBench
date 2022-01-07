
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ path_is_directory (char const*) ;
 int path_mkdir_cb (char const*) ;
 int path_parent_dir (char*) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;

bool path_mkdir(const char *dir)
{
   bool sret = 0;
   bool norecurse = 0;
   char *basedir = ((void*)0);

   if (!(dir && *dir))
      return 0;



   basedir = strdup(dir);

   if (!basedir)
    return 0;

   path_parent_dir(basedir);

   if (!*basedir || !strcmp(basedir, dir))
   {
      free(basedir);
      return 0;
   }
   if (path_is_directory(basedir))
      norecurse = 1;
   else
   {
      sret = path_mkdir(basedir);

      if (sret)
         norecurse = 1;
   }

   free(basedir);

   if (norecurse)
   {
      int ret = path_mkdir_cb(dir);


      if (ret == -2 && path_is_directory(dir))
         return 1;

      return (ret == 0);
   }

   return sret;
}
