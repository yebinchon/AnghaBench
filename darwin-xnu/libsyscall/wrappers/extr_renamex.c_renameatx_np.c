
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_remove_counter () ;
 int __renameatx_np (int,char const*,int,char const*,unsigned int) ;

int
renameatx_np(int oldfd, const char *old, int newfd, const char *new, unsigned int flags)
{
 int res = __renameatx_np(oldfd, old, newfd, new, flags);
 if (res == 0) __inc_remove_counter();
 return res;
}
