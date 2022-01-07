
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 int * count ;
 int timer_group_enable_alarm_in_isr (int ,int ) ;
 int timer_group_intr_clr_in_isr (int ,int ) ;

__attribute__((used)) static void timer_isr(void *arg)
{
    int timer_idx = (int)arg;
    count[timer_idx]++;
    if (timer_idx==0) {
        timer_group_intr_clr_in_isr(TIMER_GROUP_0, TIMER_0);
        timer_group_enable_alarm_in_isr(TIMER_GROUP_0, TIMER_0);
    }
    if (timer_idx==1) {
        timer_group_intr_clr_in_isr(TIMER_GROUP_0, TIMER_1);
        timer_group_enable_alarm_in_isr(TIMER_GROUP_0, TIMER_1);
    }
    if (timer_idx==2) {
        timer_group_intr_clr_in_isr(TIMER_GROUP_1, TIMER_0);
        timer_group_enable_alarm_in_isr(TIMER_GROUP_1, TIMER_0);
    }
    if (timer_idx==3) {
        timer_group_intr_clr_in_isr(TIMER_GROUP_1, TIMER_1);
        timer_group_enable_alarm_in_isr(TIMER_GROUP_1, TIMER_1);
    }

}
