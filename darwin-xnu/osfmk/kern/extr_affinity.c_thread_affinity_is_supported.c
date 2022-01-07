
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ ml_get_max_affinity_sets () ;

boolean_t
thread_affinity_is_supported(void)
{
 return (ml_get_max_affinity_sets() != 0);
}
