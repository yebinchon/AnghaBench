
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_zone_name_t ;
typedef int mach_zone_info_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_priv_t ;


 scalar_t__ HOST_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_HOST ;
 int KERN_SUCCESS ;
 int PE_i_can_has_debugger (int *) ;
 scalar_t__ get_zone_info (int ,int *,int *) ;
 int zone_find_largest () ;

kern_return_t
mach_zone_info_for_largest_zone(
 host_priv_t host,
 mach_zone_name_t *namep,
 mach_zone_info_t *infop)
{
 if (host == HOST_NULL)
  return KERN_INVALID_HOST;





 if (namep == ((void*)0) || infop == ((void*)0)) {
  return KERN_INVALID_ARGUMENT;
 }

 if (get_zone_info(zone_find_largest(), namep, infop)) {
  return KERN_SUCCESS;
 }
 return KERN_FAILURE;
}
