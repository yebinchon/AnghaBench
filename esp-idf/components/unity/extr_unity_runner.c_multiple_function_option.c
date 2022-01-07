
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int test_fn_count; int line; int name; int * fn; } ;
typedef TYPE_1__ test_desc_t ;
typedef int cmdline ;


 int UNITY_PRINT_EOL () ;
 int UnityPrint (char*) ;
 int UnityPrintNumber (int) ;
 int atoi (char const*) ;
 int print_multiple_function_test_menu (TYPE_1__ const*) ;
 scalar_t__ strlen (char*) ;
 int unity_default_test_run (int ,int ,int ) ;
 int unity_gets (char*,int) ;

__attribute__((used)) static int multiple_function_option(const test_desc_t *test_ms)
{
    int selection;
    char cmdline[256] = {0};

    print_multiple_function_test_menu(test_ms);
    while (strlen(cmdline) == 0) {
        unity_gets(cmdline, sizeof(cmdline));
        if (strlen(cmdline) == 0) {

            print_multiple_function_test_menu(test_ms);
        }
    }
    selection = atoi((const char *) cmdline) - 1;
    if (selection >= 0 && selection < test_ms->test_fn_count) {
        unity_default_test_run(test_ms->fn[selection], test_ms->name, test_ms->line);
    } else {
        UnityPrint("Invalid selection, your should input number 1-");
        UnityPrintNumber(test_ms->test_fn_count);
        UNITY_PRINT_EOL();
    }
    return selection;
}
