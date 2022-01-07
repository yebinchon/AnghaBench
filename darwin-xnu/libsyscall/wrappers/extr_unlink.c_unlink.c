
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_remove_counter () ;
 int __unlink (char const*) ;

int
unlink(const char *path)
{
 int res = __unlink(path);
 if (res == 0) __inc_remove_counter();
 return res;
}
