
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_remove_counter () ;
 int __unlinkat (int,char const*,int) ;

int
unlinkat(int fd, const char *path, int flag)
{
 int res = __unlinkat(fd, path, flag);
 if (res == 0) __inc_remove_counter();
 return res;
}
