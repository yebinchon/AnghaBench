
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portENTER_CRITICAL_NESTED () ;
 int setup_values () ;

__attribute__((used)) static void do_int_wdt(void)
{
    setup_values();
    portENTER_CRITICAL_NESTED();
    while(1);
}
