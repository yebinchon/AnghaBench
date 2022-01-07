
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int test_fn_count; char** test_fn_name; } ;
typedef TYPE_1__ test_desc_t ;


 int UNITY_PRINT_EOL () ;
 int UNITY_PRINT_TAB () ;
 int UnityPrint (char*) ;
 int UnityPrintNumberUnsigned (int) ;

__attribute__((used)) static void print_multiple_function_test_menu(const test_desc_t *test_ms)
{
    UnityPrint(test_ms->name);
    UNITY_PRINT_EOL();
    for (int i = 0; i < test_ms->test_fn_count; i++) {
        UNITY_PRINT_TAB();
        UnityPrint("(");
        UnityPrintNumberUnsigned(i + 1);
        UnityPrint(")");
        UNITY_PRINT_TAB();
        UnityPrint("\"");
        UnityPrint(test_ms->test_fn_name[i]);
        UnityPrint("\"");
        UNITY_PRINT_EOL();
    }
}
