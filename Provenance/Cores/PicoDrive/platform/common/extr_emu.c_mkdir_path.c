
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lprintf (char*,char*) ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ plat_is_dir (char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void mkdir_path(char *path_with_reserve, int pos, const char *name)
{
 strcpy(path_with_reserve + pos, name);
 if (plat_is_dir(path_with_reserve))
  return;
 if (mkdir(path_with_reserve, 0777) < 0)
  lprintf("failed to create: %s\n", path_with_reserve);
}
