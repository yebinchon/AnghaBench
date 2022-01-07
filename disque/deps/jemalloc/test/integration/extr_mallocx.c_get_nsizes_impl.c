
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_d_eq (int ,int ,char*,char const*) ;
 int mallctl (char const*,unsigned int*,size_t*,int *,int ) ;

__attribute__((used)) static unsigned
get_nsizes_impl(const char *cmd)
{
 unsigned ret;
 size_t z;

 z = sizeof(unsigned);
 assert_d_eq(mallctl(cmd, &ret, &z, ((void*)0), 0), 0,
     "Unexpected mallctl(\"%s\", ...) failure", cmd);

 return (ret);
}
