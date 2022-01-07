
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int period_ms_t ;
typedef int osi_alarm_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ hash_map_entry_t ;


 scalar_t__ osi_alarm_get_remaining_ms (int *) ;

bool hash_iter_ro_cb(hash_map_entry_t *hash_map_entry, void *context)
{
    osi_alarm_t *alarm = (osi_alarm_t *)hash_map_entry->data;
    period_ms_t *p_remaining_ms = (period_ms_t *)context;
    *p_remaining_ms += osi_alarm_get_remaining_ms(alarm);
    return 1;
}
