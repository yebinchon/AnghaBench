
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef TYPE_2__* clock_t ;
typedef int clock_flavor_t ;
typedef int clock_attr_t ;
struct TYPE_6__ {TYPE_1__* cl_ops; } ;
struct TYPE_5__ {int (* c_getattr ) (int ,int ,int *) ;} ;


 TYPE_2__* CLOCK_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int stub1 (int ,int ,int *) ;

kern_return_t
clock_get_attributes(
 clock_t clock,
 clock_flavor_t flavor,
 clock_attr_t attr,
 mach_msg_type_number_t *count)
{
 if (clock == CLOCK_NULL)
  return (KERN_INVALID_ARGUMENT);
 if (clock->cl_ops->c_getattr)
  return (clock->cl_ops->c_getattr(flavor, attr, count));
 return (KERN_FAILURE);
}
