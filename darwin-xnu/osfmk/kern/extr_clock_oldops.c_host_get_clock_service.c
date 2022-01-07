
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
typedef scalar_t__ host_t ;
typedef TYPE_1__* clock_t ;
typedef size_t clock_id_t ;
struct TYPE_5__ {scalar_t__ cl_ops; } ;


 TYPE_1__* CLOCK_NULL ;
 scalar_t__ HOST_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 size_t clock_count ;
 TYPE_1__* clock_list ;

kern_return_t
host_get_clock_service(
 host_t host,
 clock_id_t clock_id,
 clock_t *clock)
{
 if (host == HOST_NULL || clock_id < 0 || clock_id >= clock_count) {
  *clock = CLOCK_NULL;
  return (KERN_INVALID_ARGUMENT);
 }

 *clock = &clock_list[clock_id];
 if ((*clock)->cl_ops == 0)
  return (KERN_FAILURE);
 return (KERN_SUCCESS);
}
