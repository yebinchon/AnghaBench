
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pal_cr_t ;


 int get_cr0 () ;
 int get_cr2 () ;
 int get_cr3_raw () ;
 int get_cr4 () ;

void
pal_get_control_registers( pal_cr_t *cr0, pal_cr_t *cr2,
      pal_cr_t *cr3, pal_cr_t *cr4 )
{
 *cr0 = get_cr0();
 *cr2 = get_cr2();
 *cr3 = get_cr3_raw();
 *cr4 = get_cr4();
}
