
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int_timer_ctr ;
 scalar_t__ xthal_get_ccount () ;
 int xthal_set_ccompare (int,scalar_t__) ;

void int_timer_handler(void *arg) {
    xthal_set_ccompare(1, xthal_get_ccount()+8000000);
    int_timer_ctr++;
}
