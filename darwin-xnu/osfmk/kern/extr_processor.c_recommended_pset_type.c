
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int pset_cluster_type_t ;


 int PSET_SMP ;

pset_cluster_type_t
recommended_pset_type(thread_t thread)
{
 (void)thread;
 return PSET_SMP;
}
