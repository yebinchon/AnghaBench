
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int test_fn_count; int line; int * fn; int desc; int file; } ;
typedef TYPE_1__ test_desc_t ;
struct TYPE_6__ {int CurrentDetail1; int TestFile; } ;


 int UNITY_END () ;
 int UNITY_OUTPUT_FLUSH () ;
 int UNITY_PRINT_EOL () ;
 TYPE_4__ Unity ;
 int UnityPrint (char*) ;
 int esp_restart () ;
 int multiple_function_option (TYPE_1__ const*) ;
 int * strstr (int ,char*) ;
 int unity_default_test_run (int ,char*,int ) ;

__attribute__((used)) static void unity_run_single_test(const test_desc_t *test)
{
    UnityPrint("Running ");
    UnityPrint(test->name);
    UnityPrint("...");
    UNITY_PRINT_EOL();

    UNITY_OUTPUT_FLUSH();

    Unity.TestFile = test->file;
    Unity.CurrentDetail1 = test->desc;
    bool reset_after_test = strstr(Unity.CurrentDetail1, "[leaks") != ((void*)0);
    bool multi_device = strstr(Unity.CurrentDetail1, "[multi_device]") != ((void*)0);
    if (test->test_fn_count == 1) {
        unity_default_test_run(test->fn[0], test->name, test->line);
    } else {
        int selection = multiple_function_option(test);
        if (reset_after_test && multi_device == 0) {
            if (selection != (test->test_fn_count - 1)) {

                esp_restart();
            }
        }
    }

    if (reset_after_test) {

        UNITY_END();
        UnityPrint("Enter next test, or 'enter' to see menu");
        UNITY_PRINT_EOL();
        UNITY_OUTPUT_FLUSH();
        esp_restart();
    }
}
