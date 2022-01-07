
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tbi ;
struct TYPE_2__ {int tcr_el1; } ;


 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 int TBI_KERNEL ;
 int TBI_USER ;
 int TCR_TBI0_TOPBYTE_IGNORED ;
 int TCR_TBI1_TOPBYTE_IGNORED ;
 int get_tcr () ;
 int set_tcr (int ) ;
 TYPE_1__ sysreg_restore ;
 int user_tbi ;

__attribute__((used)) static void
set_tbi(void)
{




 uint64_t old_tcr, new_tcr;
 int tbi = 0;

 if (PE_parse_boot_argn("tbi", &tbi, sizeof(tbi)))
  user_tbi = ((tbi & TBI_USER) == TBI_USER);
 old_tcr = new_tcr = get_tcr();
 new_tcr |= (user_tbi) ? TCR_TBI0_TOPBYTE_IGNORED : 0;
 new_tcr |= (tbi & TBI_KERNEL) ? TCR_TBI1_TOPBYTE_IGNORED : 0;

 if (old_tcr != new_tcr) {
  set_tcr(new_tcr);
  sysreg_restore.tcr_el1 = new_tcr;
 }

}
