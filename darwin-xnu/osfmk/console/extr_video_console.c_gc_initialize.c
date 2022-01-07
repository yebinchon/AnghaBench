
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_info {int dummy; } ;
struct TYPE_2__ {int (* initialize ) (struct vc_info*) ;} ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int VCPUTC_LOCK_INIT () ;
 scalar_t__ gc_initialized ;
 TYPE_1__ gc_ops ;
 int gc_reset_vt100 () ;
 scalar_t__ gc_x ;
 scalar_t__ gc_y ;
 int stub1 (struct vc_info*) ;

__attribute__((used)) static void
gc_initialize(struct vc_info * info)
{
 if ( gc_initialized == FALSE )
 {

  VCPUTC_LOCK_INIT();

  gc_initialized = TRUE;
 }

 gc_ops.initialize(info);

 gc_reset_vt100();
 gc_x = gc_y = 0;
}
