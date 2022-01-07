
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
checkdir(const char *pathname)
{
   struct stat buf;
   return stat(pathname, &buf) == 0 && S_ISDIR(buf.st_mode);
}
