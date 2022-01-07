
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ test_desc_t ;


 TYPE_1__* s_unity_tests_first ;
 TYPE_1__* s_unity_tests_last ;

void unity_testcase_register(test_desc_t *desc)
{
    if (!s_unity_tests_first) {
        s_unity_tests_first = desc;
        s_unity_tests_last = desc;
    } else {
        test_desc_t *temp = s_unity_tests_first;
        s_unity_tests_first = desc;
        s_unity_tests_first->next = temp;
    }
}
