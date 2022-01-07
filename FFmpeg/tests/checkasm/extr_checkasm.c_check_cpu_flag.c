
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpu_flag; char const* cpu_flag_name; int current_test_name; scalar_t__ test_name; } ;
struct TYPE_3__ {int (* func ) () ;int name; } ;


 int av_force_cpu_flags (int) ;
 int av_get_cpu_flags () ;
 TYPE_2__ state ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 int stub1 () ;
 TYPE_1__* tests ;

__attribute__((used)) static void check_cpu_flag(const char *name, int flag)
{
    int old_cpu_flag = state.cpu_flag;

    flag |= old_cpu_flag;
    av_force_cpu_flags(-1);
    state.cpu_flag = flag & av_get_cpu_flags();
    av_force_cpu_flags(state.cpu_flag);

    if (!flag || state.cpu_flag != old_cpu_flag) {
        int i;

        state.cpu_flag_name = name;
        for (i = 0; tests[i].func; i++) {
            if (state.test_name && strcmp(tests[i].name, state.test_name))
                continue;
            state.current_test_name = tests[i].name;
            tests[i].func();
        }
    }
}
