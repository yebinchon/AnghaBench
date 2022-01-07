
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmdline ;


 int UNITY_BEGIN () ;
 int UNITY_END () ;
 int UNITY_OUTPUT_FLUSH () ;
 int UNITY_PRINT_EOL () ;
 int UnityPrint (char*) ;
 int get_test_count () ;
 scalar_t__ isdigit (unsigned char) ;
 int print_test_menu () ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 int trim_trailing_space (char*) ;
 int unity_gets (char*,int) ;
 int unity_run_all_tests () ;
 int unity_run_single_test_by_index_parse (char*,int) ;
 int unity_run_test_by_name (char*) ;
 int unity_run_tests_by_tag (char*,int) ;

void unity_run_menu(void)
{
    UNITY_PRINT_EOL();
    UNITY_PRINT_EOL();
    UnityPrint("Press ENTER to see the list of tests.");
    UNITY_PRINT_EOL();
    int test_count = get_test_count();
    while (1) {
        char cmdline[256] = { 0 };
        while (strlen(cmdline) == 0) {
            unity_gets(cmdline, sizeof(cmdline));
            trim_trailing_space(cmdline);
            if (strlen(cmdline) == 0) {

                print_test_menu();
            }
        }

        if (cmdline[0] == '-') {
            UNITY_END();
            continue;
        }

        UNITY_BEGIN();

        size_t idx = 0;
        bool invert = 0;
        if (cmdline[idx] == '!') {
            invert = 1;
            ++idx;
        }

        if (cmdline[idx] == '*') {
            unity_run_all_tests();
        } else if (cmdline[idx] == '[') {
            unity_run_tests_by_tag(cmdline + idx, invert);
        } else if (cmdline[idx] == '"') {
            char* end = strrchr(cmdline, '"');
            if (end > &cmdline[idx]) {
                *end = 0;
                unity_run_test_by_name(cmdline + idx + 1);
            }
        } else if (isdigit((unsigned char)cmdline[idx])) {
            unity_run_single_test_by_index_parse(cmdline + idx, test_count);
        }

        UNITY_END();

        UnityPrint("Enter next test, or 'enter' to see menu");
        UNITY_PRINT_EOL();
        UNITY_OUTPUT_FLUSH();
    }
}
