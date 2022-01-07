
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETRO_VFS_STAT_IS_VALID ;
 int path_stat_cb (char const*,int *) ;

bool path_is_valid(const char *path)
{
   return (path_stat_cb(path, ((void*)0)) & RETRO_VFS_STAT_IS_VALID) != 0;
}
