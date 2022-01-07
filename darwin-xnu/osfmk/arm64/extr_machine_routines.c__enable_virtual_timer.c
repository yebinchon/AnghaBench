
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CNTP_CTL_EL0_ENABLE ;

__attribute__((used)) static void
_enable_virtual_timer(void)
{
 uint64_t cntvctl = CNTP_CTL_EL0_ENABLE;

 __asm__ volatile ("msr CNTP_CTL_EL0, %0" : : "r"(cntvctl));
}
