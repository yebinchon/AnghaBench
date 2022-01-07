
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __delete (char const*) ;
 int __inc_remove_counter () ;

int
__carbon_delete(const char *path)
{
 int res = __delete(path);
 if (res == 0) __inc_remove_counter();
 return res;
}
