
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mzn_name; } ;


 int T_LOG (char*) ;
 int VME_ZONE ;
 int VMOBJECTS_ZONE ;
 int largest_zone_info ;
 TYPE_1__ largest_zone_name ;
 int print_zone_info (TYPE_1__*,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ vme_zone_compares_to_vm_objects () ;

__attribute__((used)) static bool verify_generic_jetsam_criteria(void)
{
 T_LOG("Largest zone info");
 print_zone_info(&largest_zone_name, &largest_zone_info);


 if (strcmp(largest_zone_name.mzn_name, VME_ZONE)) {

  if (!strcmp(largest_zone_name.mzn_name, VMOBJECTS_ZONE) && vme_zone_compares_to_vm_objects()) {
   return 0;
  }
  return 1;
 }
 return 0;
}
