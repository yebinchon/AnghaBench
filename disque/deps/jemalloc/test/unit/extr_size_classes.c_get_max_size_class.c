
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,unsigned int*,size_t*,int *,int ) ;
 int mallctlbymib (size_t*,size_t,size_t*,size_t*,int *,int ) ;
 int mallctlnametomib (char*,size_t*,size_t*) ;

__attribute__((used)) static size_t
get_max_size_class(void)
{
 unsigned nhchunks;
 size_t mib[4];
 size_t sz, miblen, max_size_class;

 sz = sizeof(unsigned);
 assert_d_eq(mallctl("arenas.nhchunks", &nhchunks, &sz, ((void*)0), 0), 0,
     "Unexpected mallctl() error");

 miblen = sizeof(mib) / sizeof(size_t);
 assert_d_eq(mallctlnametomib("arenas.hchunk.0.size", mib, &miblen), 0,
     "Unexpected mallctlnametomib() error");
 mib[2] = nhchunks - 1;

 sz = sizeof(size_t);
 assert_d_eq(mallctlbymib(mib, miblen, &max_size_class, &sz, ((void*)0), 0), 0,
     "Unexpected mallctlbymib() error");

 return (max_size_class);
}
