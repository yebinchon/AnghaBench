
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ test_desc_t ;


 TYPE_1__* s_unity_tests_first ;

__attribute__((used)) static int get_test_count(void)
{
    int test_counter = 0;
    for (const test_desc_t *test = s_unity_tests_first;
            test != ((void*)0);
            test = test->next) {
        ++test_counter;
    }
    return test_counter;
}
