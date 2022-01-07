
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vfs_context_t ;
typedef TYPE_2__* uthread_t ;
struct TYPE_5__ {int * vc_ucred; } ;
struct TYPE_6__ {TYPE_1__ uu_context; } ;


 int current_thread () ;
 int get_bsdthread_info (int ) ;
 TYPE_1__* vfs_context_kernel () ;

vfs_context_t
vfs_context_current(void)
{
 vfs_context_t ctx = ((void*)0);
 volatile uthread_t ut = (uthread_t)get_bsdthread_info(current_thread());

 if (ut != ((void*)0) ) {
  if (ut->uu_context.vc_ucred != ((void*)0)) {
   ctx = &ut->uu_context;
  }
 }

 return(ctx == ((void*)0) ? vfs_context_kernel() : ctx);
}
