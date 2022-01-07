
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32 ;


 int AM_DP_WIDTH ;
 int AM_SPEED ;
 int PM_DP_WIDTH ;
 int PM_SPEED ;
 void* am_dphase ;
 int clk ;
 int makeDphaseARTable () ;
 int makeDphaseDRTable () ;
 int makeDphaseTable () ;
 void* pm_dphase ;
 scalar_t__ rate_adjust (int) ;

__attribute__((used)) static void internal_refresh(void) {
 makeDphaseTable();
 makeDphaseARTable();
 makeDphaseDRTable();
 pm_dphase = (uint32)rate_adjust(PM_SPEED * PM_DP_WIDTH / (clk / 72));
 am_dphase = (uint32)rate_adjust(AM_SPEED * AM_DP_WIDTH / (clk / 72));
}
