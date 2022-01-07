
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* desc; int test_fn_count; char** test_fn_name; struct TYPE_3__* next; } ;
typedef TYPE_1__ test_desc_t ;


 int UNITY_OUTPUT_FLUSH () ;
 int UNITY_PRINT_EOL () ;
 int UNITY_PRINT_TAB () ;
 int UnityPrint (char*) ;
 int UnityPrintNumber (int) ;
 TYPE_1__* s_unity_tests_first ;

__attribute__((used)) static int print_test_menu(void)
{
    int test_counter = 0;
    UNITY_PRINT_EOL();
    UNITY_PRINT_EOL();
    UnityPrint("Here's the test menu, pick your combo:");
    UNITY_PRINT_EOL();
    for (const test_desc_t *test = s_unity_tests_first;
            test != ((void*)0);
            test = test->next, ++test_counter) {

        UnityPrint("(");
        UnityPrintNumber(test_counter + 1);
        UnityPrint(")");
        UNITY_PRINT_TAB();
        UnityPrint("\"");
        UnityPrint(test->name);
        UnityPrint("\" ");
        UnityPrint(test->desc);
        UNITY_PRINT_EOL();

        if (test->test_fn_count > 1) {
            for (int i = 0; i < test->test_fn_count; i++) {
                UNITY_PRINT_TAB();
                UnityPrint("(");
                UnityPrintNumber(i + 1);
                UnityPrint(")");
                UNITY_PRINT_TAB();
                UnityPrint("\"");
                UnityPrint(test->test_fn_name[i]);
                UnityPrint("\"");
                UNITY_PRINT_EOL();
            }
        }
    }
    UNITY_PRINT_EOL();
    UnityPrint("Enter test for running.");
    UNITY_PRINT_EOL();
    UNITY_OUTPUT_FLUSH();
    return test_counter;
}
