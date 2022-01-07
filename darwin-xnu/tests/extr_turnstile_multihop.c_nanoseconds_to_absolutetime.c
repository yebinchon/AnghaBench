
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double uint64_t ;
struct TYPE_2__ {scalar_t__ numer; scalar_t__ denom; } ;


 int pthread_once (int *,int ) ;
 TYPE_1__ sched_mti ;
 int sched_mti_init ;
 int sched_mti_once_control ;

uint64_t
nanoseconds_to_absolutetime(uint64_t nanoseconds)
{
 pthread_once(&sched_mti_once_control, sched_mti_init);

 return (uint64_t)(nanoseconds * (((double)sched_mti.denom) / ((double)sched_mti.numer)));
}
