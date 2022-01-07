
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bench_pattern_len; scalar_t__ bench_pattern; TYPE_1__* current_func; int num_failed; } ;
struct TYPE_3__ {int name; } ;


 TYPE_2__ state ;
 int strncmp (int ,scalar_t__,int ) ;

int checkasm_bench_func(void)
{
    return !state.num_failed && state.bench_pattern &&
           !strncmp(state.current_func->name, state.bench_pattern, state.bench_pattern_len);
}
