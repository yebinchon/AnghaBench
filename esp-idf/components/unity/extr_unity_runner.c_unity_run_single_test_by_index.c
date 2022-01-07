
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ test_desc_t ;


 TYPE_1__* s_unity_tests_first ;
 int unity_run_single_test (TYPE_1__ const*) ;

__attribute__((used)) static void unity_run_single_test_by_index(int index)
{
    const test_desc_t *test;
    for (test = s_unity_tests_first; test != ((void*)0) && index != 0; test = test->next, --index) {
        ;
    }
    if (test != ((void*)0)) {
        unity_run_single_test(test);
    }
}
