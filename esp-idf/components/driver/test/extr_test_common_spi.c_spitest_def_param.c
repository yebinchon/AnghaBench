
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int test_size; int * freq_list; } ;
typedef TYPE_1__ spitest_param_set_t ;


 int * test_freq_default ;

void spitest_def_param(void* arg)
{
    spitest_param_set_t *param_set=(spitest_param_set_t*)arg;
    param_set->test_size = 8;
    if (param_set->freq_list==((void*)0)) param_set->freq_list = test_freq_default;
}
