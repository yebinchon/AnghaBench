
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 scalar_t__ PZERO ;
 int VERIFY (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep0 (int *,int *,scalar_t__,char*,int ,int ) ;
 int nwk_wq_lock ;
 int nwk_wq_thread_cont ;
 int nwk_wq_waitch ;

__attribute__((used)) static void
nwk_wq_thread_func(void *v, wait_result_t w)
{
#pragma unused(v, w)
 lck_mtx_lock(&nwk_wq_lock);
 (void) msleep0(&nwk_wq_waitch, &nwk_wq_lock,
     (PZERO - 1), "nwk_wq_thread_func", 0, nwk_wq_thread_cont);




 lck_mtx_unlock(&nwk_wq_lock);
 VERIFY(0);
}
