
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_printf (char*) ;
 int in_int_context ;
 int int_handled ;
 scalar_t__ xPortInIsrContext () ;
 scalar_t__ xthal_get_ccount () ;
 int xthal_set_ccompare (int,scalar_t__) ;

__attribute__((used)) static void testint(void *arg) {
    xthal_set_ccompare(1, xthal_get_ccount()+8000000000);
    ets_printf("INT!\n");
    if (xPortInIsrContext()) in_int_context++;
    int_handled++;
}
