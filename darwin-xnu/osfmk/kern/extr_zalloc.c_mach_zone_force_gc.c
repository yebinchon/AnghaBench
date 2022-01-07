
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef scalar_t__ host_t ;


 int FALSE ;
 scalar_t__ HOST_NULL ;
 int KERN_INVALID_HOST ;
 int KERN_SUCCESS ;
 int consider_buffer_cache_collect (int ) ;
 int consider_zone_gc (int ) ;
 int stub1 (int ) ;

kern_return_t
mach_zone_force_gc(
 host_t host)
{
 if (host == HOST_NULL)
  return KERN_INVALID_HOST;
 return (KERN_SUCCESS);
}
