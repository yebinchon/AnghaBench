
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_3__ {int thread; int suspend; } ;


 scalar_t__ VCOS_EINVAL ;
 int VCOS_INIT_MAIN_SEM ;
 int VCOS_INIT_MSGQ ;
 int VCOS_INIT_NAMED_SEM ;
 int VCOS_INIT_PRINTF_LOCK ;
 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ _vcos_named_semaphore_init () ;
 int _vcos_thread_current_key ;
 int current_thread_key_init ;
 int current_thread_key_once ;
 int mtrace () ;
 int printf_lock ;
 int pthread_self () ;
 int pthread_setspecific (int ,TYPE_1__*) ;
 int vcos_logging_init () ;
 scalar_t__ vcos_msgq_init () ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 scalar_t__ vcos_once (int *,int ) ;
 scalar_t__ vcos_semaphore_create (int *,int *,int ) ;
 int vcos_term (int ) ;
 TYPE_1__ vcos_thread_main ;
 int vcos_verify (int) ;

VCOS_STATUS_T vcos_platform_init(void)
{
   VCOS_STATUS_T st;
   uint32_t flags = 0;
   int pst;

   st = _vcos_named_semaphore_init();
   if (!vcos_verify(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_NAMED_SEM;
   st = vcos_once(&current_thread_key_once, current_thread_key_init);
   if (!vcos_verify(st == VCOS_SUCCESS))
      goto end;


   st = vcos_semaphore_create(&vcos_thread_main.suspend, ((void*)0), 0);
   if (!vcos_verify(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_MAIN_SEM;

   vcos_thread_main.thread = pthread_self();

   pst = pthread_setspecific(_vcos_thread_current_key, &vcos_thread_main);
   if (!vcos_verify(pst == 0))
   {
      st = VCOS_EINVAL;
      goto end;
   }

   st = vcos_msgq_init();
   if (!vcos_verify(st == VCOS_SUCCESS))
      goto end;

   flags |= VCOS_INIT_MSGQ;

   vcos_logging_init();

end:
   if (st != VCOS_SUCCESS)
      vcos_term(flags);

   return st;
}
