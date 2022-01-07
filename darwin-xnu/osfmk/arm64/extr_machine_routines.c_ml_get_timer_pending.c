
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int CNTP_CTL_EL0_ISTATUS ;
 int FALSE ;
 int TRUE ;

boolean_t
ml_get_timer_pending()
{
 uint64_t cntp_ctl;

 __asm__ volatile("mrs %0, CNTP_CTL_EL0" : "=r"(cntp_ctl));
 return ((cntp_ctl & CNTP_CTL_EL0_ISTATUS) != 0) ? TRUE : FALSE;
}
