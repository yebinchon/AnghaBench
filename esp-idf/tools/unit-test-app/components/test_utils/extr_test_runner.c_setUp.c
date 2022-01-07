
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heap_trace_record_t ;


 int COMP_LEAK_GENERAL ;
 int CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL ;
 int CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL ;
 int TYPE_LEAK_CRITICAL ;
 int TYPE_LEAK_WARNING ;
 int assert (int *) ;
 int get_test_data_partition () ;
 int heap_trace_init_standalone (int *,size_t const) ;
 int * malloc (int) ;
 int printf (char*,char*) ;
 int test_utils_set_leak_level (int ,int ,int ) ;
 int unity_reset_leak_checks () ;

void setUp(void)
{
    printf("%s", "");
    unity_reset_leak_checks();
    test_utils_set_leak_level(CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL, TYPE_LEAK_CRITICAL, COMP_LEAK_GENERAL);
    test_utils_set_leak_level(CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL, TYPE_LEAK_WARNING, COMP_LEAK_GENERAL);
}
