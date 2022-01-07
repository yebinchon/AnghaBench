
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * CurrentDetail1; } ;


 int COMP_LEAK_ALL ;
 int TYPE_LEAK_CRITICAL ;
 int TYPE_LEAK_WARNING ;
 TYPE_1__ Unity ;
 void* critical_leak_threshold ;
 int strlen (char const*) ;
 char* strstr (int *,char const*) ;
 void* strtol (char const*,int *,int) ;
 void* test_utils_get_leak_level (int ,int ) ;
 void* warn_leak_threshold ;

__attribute__((used)) static bool leak_check_required(void)
{
    warn_leak_threshold = test_utils_get_leak_level(TYPE_LEAK_WARNING, COMP_LEAK_ALL);
    critical_leak_threshold = test_utils_get_leak_level(TYPE_LEAK_CRITICAL, COMP_LEAK_ALL);
    if (Unity.CurrentDetail1 != ((void*)0)) {
        const char *leaks = "[leaks";
        const int len_leaks = strlen(leaks);
        const char *sub_leaks = strstr(Unity.CurrentDetail1, leaks);
        if (sub_leaks != ((void*)0)) {
            if (sub_leaks[len_leaks] == ']') {
                return 1;
            } else if (sub_leaks[len_leaks] == '=') {
                critical_leak_threshold = strtol(&sub_leaks[len_leaks + 1], ((void*)0), 10);
                warn_leak_threshold = critical_leak_threshold;
                return 0;
            }
        }
    }
    return 0;
}
