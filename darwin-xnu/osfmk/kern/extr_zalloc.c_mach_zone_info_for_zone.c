
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
struct TYPE_8__ {int mzn_name; } ;
typedef TYPE_2__ mach_zone_name_t ;
typedef int mach_zone_info_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_priv_t ;
struct TYPE_7__ {int zone_name; } ;


 scalar_t__ HOST_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_HOST ;
 int KERN_SUCCESS ;
 int PE_i_can_has_debugger (int *) ;
 TYPE_1__* ZONE_NULL ;
 int all_zones_lock ;
 int assert (int) ;
 scalar_t__ get_zone_info (TYPE_1__*,int *,int *) ;
 scalar_t__ num_zones ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 scalar_t__ track_this_zone (int ,int ) ;
 TYPE_1__* zone_array ;

kern_return_t
mach_zone_info_for_zone(
 host_priv_t host,
 mach_zone_name_t name,
 mach_zone_info_t *infop)
{
 unsigned int max_zones, i;
 zone_t zone_ptr;

 if (host == HOST_NULL)
  return KERN_INVALID_HOST;





 if (infop == ((void*)0)) {
  return KERN_INVALID_ARGUMENT;
 }

 simple_lock(&all_zones_lock);
 max_zones = (unsigned int)(num_zones);
 simple_unlock(&all_zones_lock);

 zone_ptr = ZONE_NULL;
 for (i = 0; i < max_zones; i++) {
  zone_t z = &(zone_array[i]);
  assert(z != ZONE_NULL);


  if (track_this_zone(z->zone_name, name.mzn_name)) {
   zone_ptr = z;
   break;
  }
 }


 if (zone_ptr == ZONE_NULL) {
  return KERN_INVALID_ARGUMENT;
 }

 if (get_zone_info(zone_ptr, ((void*)0), infop)) {
  return KERN_SUCCESS;
 }
 return KERN_FAILURE;
}
