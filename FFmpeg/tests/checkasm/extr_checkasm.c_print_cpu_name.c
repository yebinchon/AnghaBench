
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cpu_flag_name; } ;


 int COLOR_YELLOW ;
 int color_printf (int ,char*,int *) ;
 TYPE_1__ state ;

__attribute__((used)) static void print_cpu_name(void)
{
    if (state.cpu_flag_name) {
        color_printf(COLOR_YELLOW, "%s:\n", state.cpu_flag_name);
        state.cpu_flag_name = ((void*)0);
    }
}
