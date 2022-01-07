
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int old ;


 int assert_b_eq (int,int,char*,char const*,int,char const*) ;
 int assert_d_eq (int ,int ,char*,char const*,int,char const*) ;
 int mallctl (char const*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
mallctl_bool_get(const char *name, bool expected, const char *func, int line)
{
 bool old;
 size_t sz;

 sz = sizeof(old);
 assert_d_eq(mallctl(name, &old, &sz, ((void*)0), 0), 0,
     "%s():%d: Unexpected mallctl failure reading %s", func, line, name);
 assert_b_eq(old, expected, "%s():%d: Unexpected %s value", func, line,
     name);
}
