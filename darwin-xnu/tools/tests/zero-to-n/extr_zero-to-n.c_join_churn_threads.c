
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ errno_t ;


 int EX_OSERR ;
 int TRUE ;
 scalar_t__ atomic_load_explicit (int *,int ) ;
 int atomic_store_explicit (int *,int ,int ) ;
 int errc (int ,scalar_t__,char*,size_t) ;
 size_t g_churn_count ;
 int g_churn_stop ;
 int g_churn_stopped_at ;
 int * g_churn_threads ;
 int memory_order_seq_cst ;
 int printf (char*,int ) ;
 scalar_t__ pthread_join (int ,int *) ;

__attribute__((used)) static void
join_churn_threads(void)
{
 if (atomic_load_explicit(&g_churn_stopped_at, memory_order_seq_cst) != 0)
  printf("Warning: Some of the churn threads may have stopped early: %lld\n",
         g_churn_stopped_at);

 atomic_store_explicit(&g_churn_stop, TRUE, memory_order_seq_cst);


 for (uint32_t i = 0; i < g_churn_count; i++) {
  errno_t err = pthread_join(g_churn_threads[i], ((void*)0));
  if (err) errc(EX_OSERR, err, "pthread_join %d", i);
 }
}
