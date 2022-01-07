
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,size_t*,size_t*,int *,int ) ;

__attribute__((used)) static size_t
get_lg_prof_sample(void)
{
 size_t lg_prof_sample;
 size_t sz = sizeof(size_t);

 assert_d_eq(mallctl("prof.lg_sample", &lg_prof_sample, &sz, ((void*)0), 0), 0,
     "Unexpected mallctl failure while reading profiling sample rate");
 return (lg_prof_sample);
}
