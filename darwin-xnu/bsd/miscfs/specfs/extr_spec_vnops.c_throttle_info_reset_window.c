
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct _throttle_io_info_t {int dummy; } ;
struct TYPE_4__ {int uu_throttle_bc; scalar_t__ uu_lowpri_window; struct _throttle_io_info_t* uu_throttle_info; } ;


 int current_thread () ;
 TYPE_1__* get_bsdthread_info (int ) ;
 int throttle_info_rel (struct _throttle_io_info_t*) ;

void throttle_info_reset_window(uthread_t ut)
{
 struct _throttle_io_info_t *info;

 if (ut == ((void*)0))
  ut = get_bsdthread_info(current_thread());

 if ( (info = ut->uu_throttle_info) ) {
  throttle_info_rel(info);

  ut->uu_throttle_info = ((void*)0);
  ut->uu_lowpri_window = 0;
  ut->uu_throttle_bc = 0;
 }
}
