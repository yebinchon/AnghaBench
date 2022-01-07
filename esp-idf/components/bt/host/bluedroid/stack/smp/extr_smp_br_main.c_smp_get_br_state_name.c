
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tSMP_BR_STATE ;


 size_t SMP_BR_STATE_MAX ;
 char** smp_br_state_name ;

const char *smp_get_br_state_name(tSMP_BR_STATE br_state)
{
    const char *p_str = smp_br_state_name[SMP_BR_STATE_MAX];

    if (br_state < SMP_BR_STATE_MAX) {
        p_str = smp_br_state_name[br_state];
    }

    return p_str;
}
