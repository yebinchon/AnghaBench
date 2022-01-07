
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {scalar_t__ uu_lowpri_window; } ;


 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int throttle_lowpri_io (int) ;

void vm_pageout_io_throttle(void) {
 struct uthread *uthread = get_bsdthread_info(current_thread());
 if (uthread->uu_lowpri_window) {
  throttle_lowpri_io(1);
 }

}
