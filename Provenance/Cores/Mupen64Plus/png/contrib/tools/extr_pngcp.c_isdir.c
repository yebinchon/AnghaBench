
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct display {int dummy; } ;


 scalar_t__ ENOENT ;
 scalar_t__ S_ISDIR (int ) ;
 int USER_ERROR ;
 int W_OK ;
 scalar_t__ access (char const*,int ) ;
 int display_log (struct display*,int ,char*,char const*,int ) ;
 scalar_t__ errno ;
 int stat (char const*,struct stat*) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
isdir(struct display *dp, const char *pathname)
{
   if (pathname == ((void*)0))
      return 0;

   else if (pathname[0] == 0)
      return 1;

   else
   {
      struct stat buf;
      int ret = stat(pathname, &buf);

      if (ret == 0)
      {
         if (S_ISDIR(buf.st_mode))
            return 1;


         if (access(pathname, W_OK) != 0)
            display_log(dp, USER_ERROR, "%s: cannot be written (%s)", pathname,
                  strerror(errno));

         return 0;
      }

      else
      {

         if (errno != ENOENT)
            display_log(dp, USER_ERROR, "%s: invalid output name (%s)",
                  pathname, strerror(errno));

         return 0;
      }
   }
}
