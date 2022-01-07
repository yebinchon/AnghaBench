
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int desc; struct TYPE_4__* next; } ;
typedef TYPE_1__ test_desc_t ;


 int UNITY_PRINT_EOL () ;
 int UnityPrint (char const*) ;
 TYPE_1__* s_unity_tests_first ;
 int * strstr (int ,char const*) ;
 int unity_run_single_test (TYPE_1__ const*) ;

void unity_run_tests_by_tag(const char *tag, bool invert)
{
    UnityPrint("Running tests ");
    if (invert) {
        UnityPrint("NOT ");
    }
    UnityPrint("matching '");
    UnityPrint(tag);
    UnityPrint("'...");
    UNITY_PRINT_EOL();

    for (const test_desc_t *test = s_unity_tests_first; test != ((void*)0); test = test->next) {
        if ((strstr(test->desc, tag) != ((void*)0)) == !invert) {
            unity_run_single_test(test);
        }
    }
}
