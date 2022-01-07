
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int period_ms_t ;
struct TYPE_3__ {int deadline_us; } ;
typedef TYPE_1__ osi_alarm_t ;
typedef int int64_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int * alarm_mutex ;
 int assert (int ) ;
 int esp_timer_get_time () ;
 int osi_mutex_lock (int **,int ) ;
 int osi_mutex_unlock (int **) ;

period_ms_t osi_alarm_get_remaining_ms(const osi_alarm_t *alarm)
{
    assert(alarm_mutex != ((void*)0));
    int64_t dt_us = 0;

    osi_mutex_lock(&alarm_mutex, OSI_MUTEX_MAX_TIMEOUT);
    dt_us = alarm->deadline_us - esp_timer_get_time();
    osi_mutex_unlock(&alarm_mutex);

    return (dt_us > 0) ? (period_ms_t)(dt_us / 1000) : 0;
}
