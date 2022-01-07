
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIMER_LIST_ENT ;


 int OSI_THREAD_MAX_TIMEOUT ;
 int SIG_BTU_ONESHOT_ALARM ;
 int assert (int ) ;
 int btu_stop_timer_oneshot (int *) ;
 int btu_task_post (int ,int *,int ) ;

void btu_oneshot_alarm_cb(void *data)
{
    assert(data != ((void*)0));
    TIMER_LIST_ENT *p_tle = (TIMER_LIST_ENT *)data;

    btu_stop_timer_oneshot(p_tle);

    btu_task_post(SIG_BTU_ONESHOT_ALARM, p_tle, OSI_THREAD_MAX_TIMEOUT);
}
