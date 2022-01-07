
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int uu_lowpri_window; } ;


 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;

int throttle_lowpri_window(void)
{
 struct uthread *ut = get_bsdthread_info(current_thread());
 return ut->uu_lowpri_window;
}
