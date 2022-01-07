
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int period_ms_t ;
typedef int osi_alarm_t ;
typedef int osi_alarm_err_t ;


 int TRUE ;
 int alarm_set (int *,int ,int ) ;

osi_alarm_err_t osi_alarm_set_periodic(osi_alarm_t *alarm, period_ms_t period)
{
    return alarm_set(alarm, period, TRUE);
}
