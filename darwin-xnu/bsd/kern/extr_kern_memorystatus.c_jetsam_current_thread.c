
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jetsam_thread_state {scalar_t__ thread; } ;


 scalar_t__ current_thread () ;
 struct jetsam_thread_state* jetsam_threads ;
 int max_jetsam_threads ;
 int panic (char*) ;

__attribute__((used)) static inline struct jetsam_thread_state *
jetsam_current_thread(void)
{
 for (int thr_id = 0; thr_id < max_jetsam_threads; thr_id++) {
  if (jetsam_threads[thr_id].thread == current_thread())
   return &(jetsam_threads[thr_id]);
 }
 panic("jetsam_current_thread() is being called from a non-jetsam thread\n");

 return ((void*)0);
}
