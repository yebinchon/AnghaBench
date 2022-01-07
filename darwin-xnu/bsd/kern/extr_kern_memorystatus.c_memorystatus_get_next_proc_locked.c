
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * proc_t ;
struct TYPE_3__ {int list; } ;
typedef TYPE_1__ memstat_bucket_t ;
typedef scalar_t__ boolean_t ;


 unsigned int MEMSTAT_BUCKET_COUNT ;
 int * TAILQ_FIRST (int *) ;
 int * TAILQ_NEXT (int *,int ) ;
 TYPE_1__* memstat_bucket ;
 int p_memstat_list ;

__attribute__((used)) static proc_t memorystatus_get_next_proc_locked(unsigned int *bucket_index, proc_t p, boolean_t search) {
 memstat_bucket_t *current_bucket;
 proc_t next_p;

 if (!p || ((*bucket_index) >= MEMSTAT_BUCKET_COUNT)) {
  return ((void*)0);
 }

 next_p = TAILQ_NEXT(p, p_memstat_list);
 while (!next_p && search && (++(*bucket_index) < MEMSTAT_BUCKET_COUNT)) {
  current_bucket = &memstat_bucket[*bucket_index];
  next_p = TAILQ_FIRST(&current_bucket->list);
 }

 return next_p;
}
