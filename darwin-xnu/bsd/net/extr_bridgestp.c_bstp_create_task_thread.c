
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_continue_t ;
typedef int lck_grp_attr_t ;
typedef int kern_return_t ;


 int bstp_lock_attr ;
 int bstp_lock_grp ;
 int bstp_task_attr ;
 int bstp_task_grp ;
 int bstp_task_mtx ;
 int bstp_task_thread ;
 scalar_t__ bstp_task_thread_func ;
 int kernel_thread_start (int ,int *,int *) ;
 int lck_attr_alloc_init () ;
 int lck_attr_setdebug (int ) ;
 int lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;
 int lck_mtx_init (int ,int ,int ) ;

__attribute__((used)) static void
bstp_create_task_thread(void)
{
 kern_return_t error;

 lck_grp_attr_t *lck_grp_attr = ((void*)0);

 lck_grp_attr = lck_grp_attr_alloc_init();
 bstp_task_grp = lck_grp_alloc_init("bstp_task", lck_grp_attr);
 bstp_task_attr = lck_attr_alloc_init();



 lck_mtx_init(bstp_task_mtx, bstp_lock_grp, bstp_lock_attr);
 lck_grp_attr_free(lck_grp_attr);

 error = kernel_thread_start((thread_continue_t)bstp_task_thread_func, ((void*)0), &bstp_task_thread);
}
