
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int num_zones; TYPE_2__* zone_names; } ;
struct TYPE_6__ {int mzn_name; } ;
struct TYPE_5__ {int mzi_count; } ;


 int T_LOG (char*,...) ;
 int VMENTRY_TO_VMOBJECT_COMPARISON_RATIO ;
 int VME_ZONE ;
 int VMOBJECTS_ZONE ;
 TYPE_4__ current_test ;
 int print_zone_info (TYPE_2__*,TYPE_1__*) ;
 int strcmp (int ,int ) ;
 TYPE_1__* zone_info_array ;

__attribute__((used)) static bool vme_zone_compares_to_vm_objects(void)
{
 int i;
 uint64_t vm_object_element_count = 0, vm_map_entry_element_count = 0;

 T_LOG("Comparing element counts of \"VM map entries\" and \"vm objects\" zones");
 for (i = 0; i < current_test.num_zones; i++) {
  if (!strcmp(current_test.zone_names[i].mzn_name, VME_ZONE)) {
   vm_map_entry_element_count = zone_info_array[i].mzi_count;
  } else if (!strcmp(current_test.zone_names[i].mzn_name, VMOBJECTS_ZONE)) {
   vm_object_element_count = zone_info_array[i].mzi_count;
  }
  print_zone_info(&(current_test.zone_names[i]), &(zone_info_array[i]));
 }

 T_LOG("# VM map entries as percentage of # vm objects = %llu", (vm_map_entry_element_count * 100)/ vm_object_element_count);
 if (vm_map_entry_element_count >= ((vm_object_element_count * VMENTRY_TO_VMOBJECT_COMPARISON_RATIO) / 100)) {
  T_LOG("Number of VM map entries is comparable to vm objects\n\n");
  return 1;
 }
 T_LOG("Number of VM map entries is NOT comparable to vm objects\n\n");
 return 0;
}
