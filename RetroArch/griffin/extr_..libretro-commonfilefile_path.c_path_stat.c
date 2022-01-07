
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_stat_cb (char const*,int *) ;

int path_stat(const char *path)
{
   return path_stat_cb(path, ((void*)0));
}
