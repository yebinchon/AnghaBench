
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int suspend; } ;


 int VCOS_INIT_MAIN_SEM ;
 int VCOS_INIT_MSGQ ;
 int VCOS_INIT_NAMED_SEM ;
 int VCOS_INIT_PRINTF_LOCK ;
 int _vcos_named_semaphore_deinit () ;
 int printf_lock ;
 int vcos_msgq_deinit () ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;
 TYPE_1__ vcos_thread_main ;

__attribute__((used)) static void vcos_term(uint32_t flags)
{
   if (flags & VCOS_INIT_MSGQ)
      vcos_msgq_deinit();

   if (flags & VCOS_INIT_MAIN_SEM)
      vcos_semaphore_delete(&vcos_thread_main.suspend);






   if (flags & VCOS_INIT_NAMED_SEM)
      _vcos_named_semaphore_deinit();
}
