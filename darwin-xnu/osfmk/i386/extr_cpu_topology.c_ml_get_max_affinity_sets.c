
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int x86_affinity_count ;

int
ml_get_max_affinity_sets(void)
{
 return x86_affinity_count;
}
