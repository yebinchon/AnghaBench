
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_DBGDSCR_RXFULL ;
 int arm_debug_read_dscr () ;
 int panic_unimplemented () ;

__attribute__((used)) static int
dcc_rr0(void)
{




 panic_unimplemented();
 return 0;

}
