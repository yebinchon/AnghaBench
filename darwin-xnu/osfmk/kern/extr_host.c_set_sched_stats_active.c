
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int boolean_t ;


 int KERN_SUCCESS ;
 int sched_stats_active ;

kern_return_t
set_sched_stats_active(boolean_t active)
{
 sched_stats_active = active;
 return (KERN_SUCCESS);
}
