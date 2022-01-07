
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,char const*) ;

int vc_hostfs_format(const char *path)
{
   DEBUG_MINOR("vc_hostfs_format: '%s' not implemented", path);
   return -1;
}
