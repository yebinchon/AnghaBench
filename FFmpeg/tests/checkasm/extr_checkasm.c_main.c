
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ flag; int * name; } ;
struct TYPE_5__ {char* bench_pattern; char* test_name; int num_failed; int num_checked; int funcs; int bench_pattern_len; } ;
struct TYPE_4__ {int func; } ;


 int av_get_cpu_flags () ;
 unsigned int av_get_random_seed () ;
 int av_lfg_init (int *,unsigned int) ;
 scalar_t__ bench_init () ;
 int bench_uninit () ;
 int check_cpu_flag (int *,scalar_t__) ;
 int checkasm_checked_call ;
 int checkasm_checked_call_vfp ;
 int checkasm_lfg ;
 TYPE_3__* cpus ;
 int destroy_func_tree (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ have_neon (int ) ;
 scalar_t__ have_vfp (int ) ;
 int print_benchs (int ) ;
 TYPE_2__ state ;
 int stderr ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 unsigned int strtoul (char*,int *,int) ;
 TYPE_1__* tests ;

int main(int argc, char *argv[])
{
    unsigned int seed = av_get_random_seed();
    int i, ret = 0;






    if (!tests[0].func || !cpus[0].flag) {
        fprintf(stderr, "checkasm: no tests to perform\n");
        return 0;
    }

    while (argc > 1) {
        if (!strncmp(argv[1], "--bench", 7)) {
            if (bench_init() < 0)
                return 1;
            if (argv[1][7] == '=') {
                state.bench_pattern = argv[1] + 8;
                state.bench_pattern_len = strlen(state.bench_pattern);
            } else
                state.bench_pattern = "";
        } else if (!strncmp(argv[1], "--test=", 7)) {
            state.test_name = argv[1] + 7;
        } else {
            seed = strtoul(argv[1], ((void*)0), 10);
        }

        argc--;
        argv++;
    }

    fprintf(stderr, "checkasm: using random seed %u\n", seed);
    av_lfg_init(&checkasm_lfg, seed);

    check_cpu_flag(((void*)0), 0);
    for (i = 0; cpus[i].flag; i++)
        check_cpu_flag(cpus[i].name, cpus[i].flag);

    if (state.num_failed) {
        fprintf(stderr, "checkasm: %d of %d tests have failed\n", state.num_failed, state.num_checked);
        ret = 1;
    } else {
        fprintf(stderr, "checkasm: all %d tests passed\n", state.num_checked);
        if (state.bench_pattern) {
            print_benchs(state.funcs);
        }
    }

    destroy_func_tree(state.funcs);
    bench_uninit();
    return ret;
}
