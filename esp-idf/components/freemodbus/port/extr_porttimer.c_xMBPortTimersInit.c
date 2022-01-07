
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int counter_en; int intr_type; int divider; int counter_dir; int auto_reload; int alarm_en; } ;
typedef TYPE_1__ timer_config_t ;
typedef scalar_t__ esp_err_t ;
typedef scalar_t__ USHORT ;
typedef int BOOL ;


 scalar_t__ ESP_OK ;
 int FALSE ;
 int MB_PORT_CHECK (int,int ,char*,...) ;
 int MB_PORT_TIMER_ISR_FLAG ;
 int MB_TIMER_PRESCALLER ;
 int MB_TIMER_WITH_RELOAD ;
 int TIMER_ALARM_EN ;
 int TIMER_COUNT_UP ;
 int TIMER_INTR_LEVEL ;
 int TIMER_PAUSE ;
 int TRUE ;
 scalar_t__ timer_init (int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ timer_isr_register (int ,scalar_t__,int ,void*,int ,int *) ;
 scalar_t__ timer_pause (int ,scalar_t__) ;
 scalar_t__ timer_set_alarm_value (int ,scalar_t__,scalar_t__) ;
 scalar_t__ timer_set_counter_value (int ,scalar_t__,int) ;
 int usTimerGroupIndex ;
 scalar_t__ usTimerIndex ;
 int vTimerGroupIsr ;
 int xTimerIntHandle ;

BOOL xMBPortTimersInit(USHORT usTim1Timerout50us)
{
    return TRUE;
}
