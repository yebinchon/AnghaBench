
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 int PSOCK ;
 int PSPIN ;
 int VERIFY (int ) ;
 int fadv_list ;
 int fadv_lock ;
 int flowadv_thread_cont ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep0 (int *,int *,int,char*,int ,int ) ;

__attribute__((used)) static void
flowadv_thread_func(void *v, wait_result_t w)
{
#pragma unused(v, w)
 lck_mtx_lock(&fadv_lock);
 (void) msleep0(&fadv_list, &fadv_lock, (PSOCK | PSPIN),
     "flowadv", 0, flowadv_thread_cont);




 lck_mtx_unlock(&fadv_lock);
 VERIFY(0);
}
