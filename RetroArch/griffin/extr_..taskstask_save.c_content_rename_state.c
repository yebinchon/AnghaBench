
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*,int,char const*) ;
 int filestream_delete (char const*) ;
 scalar_t__ filestream_exists (char const*) ;
 int filestream_rename (char const*,char const*) ;

bool content_rename_state(const char *origin, const char *dest)
{
   int ret = 0;
   if (filestream_exists(dest))
      filestream_delete(dest);

   ret = filestream_rename(origin, dest);
   if (!ret)
      return 1;

   RARCH_LOG("Error %d renaming file %s\n", ret, origin);
   return 0;
}
