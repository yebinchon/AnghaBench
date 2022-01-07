
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_remove_counter () ;
 int __renameat (int,char const*,int,char const*) ;

int
renameat(int oldfd, const char *old, int newfd, const char *new)
{
 int res = __renameat(oldfd, old, newfd, new);
 if (res == 0) __inc_remove_counter();
 return res;
}
