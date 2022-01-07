
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_d_eq (int ,int ,char*) ;
 int assert_zu_eq (size_t,int ,char*) ;
 int get_lg_prof_sample () ;
 int mallctl (char*,int *,int *,size_t*,int) ;

__attribute__((used)) static void
do_prof_reset(size_t lg_prof_sample)
{
 assert_d_eq(mallctl("prof.reset", ((void*)0), ((void*)0),
     &lg_prof_sample, sizeof(size_t)), 0,
     "Unexpected mallctl failure while resetting profile data");
 assert_zu_eq(lg_prof_sample, get_lg_prof_sample(),
     "Expected profile sample rate change");
}
