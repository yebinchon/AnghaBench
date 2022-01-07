
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCHAL_NMILEVEL ;
 int XTOS_SET_INTLEVEL (int ) ;
 int setup_values () ;

__attribute__((used)) static void do_int_wdt_hw(void)
{
    setup_values();
    XTOS_SET_INTLEVEL(XCHAL_NMILEVEL);
    while(1);
}
