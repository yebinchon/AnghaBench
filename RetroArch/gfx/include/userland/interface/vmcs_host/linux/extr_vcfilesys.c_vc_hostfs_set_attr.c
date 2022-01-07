
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int fattributes_t ;


 int ATTR_RDONLY ;
 int DEBUG_MINOR (char*,char const*,int) ;
 int S_IWUSR ;
 int backslash_to_slash (char*) ;
 scalar_t__ chmod (char const*,int ) ;
 int free (char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 char* strdup (char const*) ;

int vc_hostfs_set_attr(const char *path, fattributes_t attr)
{
   char *pathbuf = strdup(path);
   int ret = -1;

   DEBUG_MINOR( "vc_hostfs_set_attr: '%s', %x", path, attr );

   if (pathbuf)
   {
      mode_t mode = 0;
      struct stat sb;

      backslash_to_slash(pathbuf);

      if ( stat( path, &sb ) == 0 )
      {
         mode = sb.st_mode;

         if ( attr & ATTR_RDONLY )
         {
            mode &= ~S_IWUSR;
         }
         else
         {
            mode |= S_IWUSR;
         }



         if ( chmod( path, mode ) == 0 )
            ret = 0;
      }
   }

   if (pathbuf)
      free(pathbuf);

   return ret;
}
