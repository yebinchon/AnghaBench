
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSMP_BR_EVENT ;


 int SMP_BR_MAX_EVT ;
 char** smp_br_event_name ;

const char *smp_get_br_event_name(tSMP_BR_EVENT event)
{
    const char *p_str = smp_br_event_name[SMP_BR_MAX_EVT - 1];

    if (event < SMP_BR_MAX_EVT) {
        p_str = smp_br_event_name[event - 1];
    }
    return p_str;
}
