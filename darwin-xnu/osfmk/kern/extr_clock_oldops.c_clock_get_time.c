
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_timespec_t ;
typedef int kern_return_t ;
typedef TYPE_2__* clock_t ;
struct TYPE_6__ {TYPE_1__* cl_ops; } ;
struct TYPE_5__ {int (* c_gettime ) (int *) ;} ;


 TYPE_2__* CLOCK_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int stub1 (int *) ;

kern_return_t
clock_get_time(
 clock_t clock,
 mach_timespec_t *cur_time)
{
 if (clock == CLOCK_NULL)
  return (KERN_INVALID_ARGUMENT);
 return ((*clock->cl_ops->c_gettime)(cur_time));
}
