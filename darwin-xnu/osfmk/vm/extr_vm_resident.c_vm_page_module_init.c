
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int uint64_t ;
struct vm_page_with_ppnum {int dummy; } ;
struct vm_page {int dummy; } ;
struct TYPE_5__ {int count; int sum_count; int elem_size; int cur_size; int page_count; } ;


 int FALSE ;
 int OSAddAtomic64 (int,int *) ;
 int PAGE_SIZE ;
 int TRUE ;
 int VM_PACKED_POINTER_ALIGNMENT ;
 int VM_PAGE_MOVE_STOLEN (int) ;
 int Z_ALIGNMENT_REQUIRED ;
 int Z_CALLERACCT ;
 int Z_EXHAUST ;
 int Z_EXPAND ;
 int Z_FOREIGN ;
 int Z_GZALLOC_EXEMPT ;
 int round_page (int) ;
 TYPE_1__* vm_page_array_zone ;
 int vm_page_pages ;
 TYPE_1__* vm_page_zone ;
 TYPE_1__* zinit (int,int ,int,char*) ;
 int zone_change (TYPE_1__*,int ,int ) ;

void
vm_page_module_init(void)
{
 uint64_t vm_page_zone_pages, vm_page_array_zone_data_size;
 vm_size_t vm_page_with_ppnum_size;

 vm_page_array_zone = zinit((vm_size_t) sizeof(struct vm_page),
        0, PAGE_SIZE, "vm pages array");

 zone_change(vm_page_array_zone, Z_CALLERACCT, FALSE);
 zone_change(vm_page_array_zone, Z_EXPAND, FALSE);
 zone_change(vm_page_array_zone, Z_EXHAUST, TRUE);
 zone_change(vm_page_array_zone, Z_FOREIGN, TRUE);
 zone_change(vm_page_array_zone, Z_GZALLOC_EXEMPT, TRUE);




 vm_page_array_zone->count += vm_page_pages;
 vm_page_array_zone->sum_count += vm_page_pages;
 vm_page_array_zone_data_size = vm_page_pages * vm_page_array_zone->elem_size;
 vm_page_array_zone->cur_size += vm_page_array_zone_data_size;
 vm_page_zone_pages = ((round_page(vm_page_array_zone_data_size)) / PAGE_SIZE);
 OSAddAtomic64(vm_page_zone_pages, &(vm_page_array_zone->page_count));

 VM_PAGE_MOVE_STOLEN(vm_page_zone_pages);

 vm_page_with_ppnum_size = (sizeof(struct vm_page_with_ppnum) + (VM_PACKED_POINTER_ALIGNMENT-1)) & ~(VM_PACKED_POINTER_ALIGNMENT - 1);

 vm_page_zone = zinit(vm_page_with_ppnum_size,
        0, PAGE_SIZE, "vm pages");

 zone_change(vm_page_zone, Z_CALLERACCT, FALSE);
 zone_change(vm_page_zone, Z_EXPAND, FALSE);
 zone_change(vm_page_zone, Z_EXHAUST, TRUE);
 zone_change(vm_page_zone, Z_FOREIGN, TRUE);
 zone_change(vm_page_zone, Z_GZALLOC_EXEMPT, TRUE);
 zone_change(vm_page_zone, Z_ALIGNMENT_REQUIRED, TRUE);
}
