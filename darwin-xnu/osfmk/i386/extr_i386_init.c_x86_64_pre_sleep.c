
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ ID_MAP_VTOP (int *) ;
 int * IdlePML4 ;
 size_t KERNEL_PML4_INDEX ;
 int get_cr3_raw () ;
 int set_cr3_raw (int ) ;

uint64_t
x86_64_pre_sleep(void)
{
 IdlePML4[0] = IdlePML4[KERNEL_PML4_INDEX];
 uint64_t oldcr3 = get_cr3_raw();
 set_cr3_raw((uint32_t) (uintptr_t)ID_MAP_VTOP(IdlePML4));
 return oldcr3;
}
