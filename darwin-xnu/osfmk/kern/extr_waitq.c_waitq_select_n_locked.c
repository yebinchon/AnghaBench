
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waitq_select_cb ;
typedef int uint64_t ;
struct waitq_select_args {void* select_ctx; int max_threads; int* nthreads; int * spl; int threadq; int * reserved_preposts; int select_cb; int event; struct waitq* waitq; struct waitq* posted_waitq; } ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int queue_t ;
typedef int event64_t ;


 int do_waitq_select_n_locked (struct waitq_select_args*) ;

__attribute__((used)) static __inline__ int waitq_select_n_locked(struct waitq *waitq,
         event64_t event,
         waitq_select_cb select_cb,
         void *select_ctx,
         uint64_t *reserved_preposts,
         queue_t threadq,
         int max_threads, spl_t *spl)
{
 int nthreads = 0;

 struct waitq_select_args args = {
  .posted_waitq = waitq,
  .waitq = waitq,
  .event = event,
  .select_cb = select_cb,
  .select_ctx = select_ctx,
  .reserved_preposts = reserved_preposts,
  .threadq = threadq,
  .max_threads = max_threads,
  .nthreads = &nthreads,
  .spl = spl,
 };

 do_waitq_select_n_locked(&args);
 return nthreads;
}
