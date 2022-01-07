
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_address_t ;
typedef unsigned int uint64_t ;
struct TYPE_5__ {int * mzn_name; } ;
typedef TYPE_1__ mach_zone_name_t ;
struct TYPE_6__ {unsigned int mzi_elem_size; } ;
typedef TYPE_2__ mach_zone_info_t ;
typedef int mach_memory_info_t ;
typedef int kern_return_t ;


 int T_ASSERT_EQ (unsigned int,unsigned int,char*) ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_END ;
 int T_LOG (char*,int *,unsigned int) ;
 int T_QUIET ;
 int mach_host_self () ;
 int mach_memory_info (int ,TYPE_1__**,unsigned int*,TYPE_2__**,unsigned int*,int **,unsigned int*) ;
 int mach_task_self () ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;
 unsigned int strtoul (int *,int *,int) ;
 int vm_deallocate (int ,int ,int ) ;

__attribute__((used)) static void run_test(void)
{
 kern_return_t kr;
 uint64_t size, i;
 mach_zone_name_t *name = ((void*)0);
 unsigned int nameCnt = 0;
 mach_zone_info_t *info = ((void*)0);
 unsigned int infoCnt = 0;
 mach_memory_info_t *wiredInfo = ((void*)0);
 unsigned int wiredInfoCnt = 0;
 const char kalloc_str[] = "kalloc.";

 kr = mach_memory_info(mach_host_self(),
   &name, &nameCnt, &info, &infoCnt,
   &wiredInfo, &wiredInfoCnt);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "mach_memory_info");
 T_QUIET; T_ASSERT_EQ(nameCnt, infoCnt, "zone name and info counts don't match");


 for (i = 0; i < nameCnt; i++) {
  if (strncmp(name[i].mzn_name, kalloc_str, strlen(kalloc_str)) == 0) {
   size = strtoul(&(name[i].mzn_name[strlen(kalloc_str)]), ((void*)0), 10);
   T_LOG("ZONE NAME: %-25s ELEMENT SIZE: %llu", name[i].mzn_name, size);
   T_QUIET; T_ASSERT_EQ(size, info[i].mzi_elem_size, "kalloc zone name and element size don't match");
  }
 }

 if ((name != ((void*)0)) && (nameCnt != 0)) {
  kr = vm_deallocate(mach_task_self(), (vm_address_t) name,
    (vm_size_t) (nameCnt * sizeof *name));
  T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "vm_deallocate name");
 }

 if ((info != ((void*)0)) && (infoCnt != 0)) {
  kr = vm_deallocate(mach_task_self(), (vm_address_t) info,
    (vm_size_t) (infoCnt * sizeof *info));
  T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "vm_deallocate info");
 }

 if ((wiredInfo != ((void*)0)) && (wiredInfoCnt != 0)) {
  kr = vm_deallocate(mach_task_self(), (vm_address_t) wiredInfo,
    (vm_size_t) (wiredInfoCnt * sizeof *wiredInfo));
  T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "vm_deallocate wiredInfo");
 }

 T_END;
}
