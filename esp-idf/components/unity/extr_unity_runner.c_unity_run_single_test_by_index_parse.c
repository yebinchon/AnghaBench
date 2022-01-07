
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNITY_EXEC_TIME_MS () ;
 int UNITY_EXEC_TIME_START () ;
 int UNITY_EXEC_TIME_STOP () ;
 int UNITY_OUTPUT_FLUSH () ;
 int UNITY_PRINT_EOL () ;
 int UnityPrint (char*) ;
 int UnityPrintNumberUnsigned (int ) ;
 int strtol (char const*,int *,int) ;
 int unity_run_single_test_by_index (int) ;

__attribute__((used)) static void unity_run_single_test_by_index_parse(const char *filter, int index_max)
{
    int test_index = strtol(filter, ((void*)0), 10);
    if (test_index >= 1 && test_index <= index_max) {
        UNITY_EXEC_TIME_START();
        unity_run_single_test_by_index(test_index - 1);
        UNITY_EXEC_TIME_STOP();
        UnityPrint("Test ran in ");
        UnityPrintNumberUnsigned(UNITY_EXEC_TIME_MS());
        UnityPrint("ms");
        UNITY_PRINT_EOL();
        UNITY_OUTPUT_FLUSH();
    }
}
