
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tSMP_STATE ;


 size_t SMP_STATE_MAX ;
 char** smp_state_name ;

const char *smp_get_state_name(tSMP_STATE state)
{
    const char *p_str = smp_state_name[SMP_STATE_MAX];

    if (state < SMP_STATE_MAX) {
        p_str = smp_state_name[state];
    }
    return p_str;
}
