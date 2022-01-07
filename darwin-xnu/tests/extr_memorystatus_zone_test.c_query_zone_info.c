
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int kern_return_t ;
struct TYPE_5__ {int num_zones; TYPE_1__* zone_names; } ;
struct TYPE_4__ {int mzn_name; } ;


 int T_ASSERT_MACH_SUCCESS (int ,char*,int ,int ,...) ;
 int T_QUIET ;
 TYPE_3__ current_test ;
 int largest_zone_info ;
 int largest_zone_name ;
 int mach_error_string (int ) ;
 int mach_host_self () ;
 int mach_zone_info_for_largest_zone (int ,int *,int *) ;
 int mach_zone_info_for_zone (int ,TYPE_1__,int *) ;
 int print_zone_info (TYPE_1__*,int *) ;
 int * zone_info_array ;

__attribute__((used)) static void query_zone_info(void)
{
 int i;
 kern_return_t kr;
 static uint64_t num_calls = 0;

 for (i = 0; i < current_test.num_zones; i++) {
  kr = mach_zone_info_for_zone(mach_host_self(), current_test.zone_names[i], &(zone_info_array[i]));
  T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_zone_info_for_zone(%s) returned %d [%s]", current_test.zone_names[i].mzn_name, kr, mach_error_string(kr));
 }
 kr = mach_zone_info_for_largest_zone(mach_host_self(), &largest_zone_name, &largest_zone_info);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_zone_info_for_largest_zone returned %d [%s]", kr, mach_error_string(kr));

 num_calls++;
 if (num_calls % 10 != 0) {
  return;
 }


 for (i = 0; i < current_test.num_zones; i++) {
  print_zone_info(&(current_test.zone_names[i]), &(zone_info_array[i]));
 }
}
