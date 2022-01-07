
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __inc_remove_counter () ;
 int __rename (char const*,char const*) ;

int
rename(const char *old, const char *new)
{
 int res = __rename(old, new);
 if (res == 0) __inc_remove_counter();
 return res;
}
