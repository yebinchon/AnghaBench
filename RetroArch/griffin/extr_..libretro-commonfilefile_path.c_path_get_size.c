
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ path_stat_cb (char const*,int*) ;

int32_t path_get_size(const char *path)
{
   int32_t filesize = 0;
   if (path_stat_cb(path, &filesize) != 0)
      return filesize;

   return -1;
}
