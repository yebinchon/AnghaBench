
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int timer_call_init_abstime () ;
 int timer_call_lck_attr ;
 int timer_call_lck_grp ;
 int timer_call_lck_grp_attr ;
 int timer_longterm_init () ;

void
timer_call_init(void)
{
 lck_attr_setdefault(&timer_call_lck_attr);
 lck_grp_attr_setdefault(&timer_call_lck_grp_attr);
 lck_grp_init(&timer_call_lck_grp, "timer_call", &timer_call_lck_grp_attr);

 timer_longterm_init();
 timer_call_init_abstime();
}
