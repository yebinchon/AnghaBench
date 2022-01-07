
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALLOCPAGES (int) ;
 scalar_t__ ID_MAP_VTOP (scalar_t__) ;
 int INTEL_PTE_WRITE ;
 scalar_t__ IdlePDPT ;
 scalar_t__ IdlePML4 ;
 scalar_t__ IdlePTD ;
 scalar_t__ KERNEL_PML4_INDEX ;
 scalar_t__ KPTphys ;
 int NKPT ;
 int NPGPTD ;
 uintptr_t PAGE_SHIFT ;
 int VSTART_PHYSMAP_INIT ;
 int VSTART_SET_CR3 ;
 int doublemap_init () ;
 int fillkpt (scalar_t__,int ,uintptr_t,int ,int) ;
 int idt64_remap () ;
 scalar_t__ physfree ;
 int physmap_init () ;
 int postcode (int ) ;
 int set_cr3_raw (uintptr_t) ;

__attribute__((used)) static void
Idle_PTs_init(void)
{

 KPTphys = ALLOCPAGES(NKPT);
 IdlePTD = ALLOCPAGES(NPGPTD);
 IdlePDPT = ALLOCPAGES(1);
 IdlePML4 = ALLOCPAGES(1);


 fillkpt(KPTphys,
  INTEL_PTE_WRITE, 0, 0, (int)(((uintptr_t)physfree) >> PAGE_SHIFT));


 fillkpt(IdlePTD,
  INTEL_PTE_WRITE, (uintptr_t)ID_MAP_VTOP(KPTphys), 0, NKPT);


 fillkpt(IdlePDPT,
  INTEL_PTE_WRITE, (uintptr_t)ID_MAP_VTOP(IdlePTD), 0, NPGPTD);


 fillkpt(IdlePML4 + KERNEL_PML4_INDEX,
  INTEL_PTE_WRITE, (uintptr_t)ID_MAP_VTOP(IdlePDPT), 0, 1);

 postcode(VSTART_PHYSMAP_INIT);

 physmap_init();
 doublemap_init();
 idt64_remap();

 postcode(VSTART_SET_CR3);


 set_cr3_raw((uintptr_t)ID_MAP_VTOP(IdlePML4));

}
