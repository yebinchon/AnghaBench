
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_12__ {int list; } ;
typedef TYPE_2__ memstat_bucket_t ;
struct TYPE_11__ {int task; } ;


 unsigned int MEMSTAT_BUCKET_COUNT ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int memorystatus_get_task_page_counts (int ,scalar_t__*,int *,int *) ;
 TYPE_2__* memstat_bucket ;
 int p_memstat_list ;

__attribute__((used)) static void memorystatus_sort_by_largest_process_locked(unsigned int bucket_index)
{
 proc_t p = ((void*)0), insert_after_proc = ((void*)0), max_proc = ((void*)0);
 proc_t next_p = ((void*)0), prev_max_proc = ((void*)0);
 uint32_t pages = 0, max_pages = 0;
 memstat_bucket_t *current_bucket;

 if (bucket_index >= MEMSTAT_BUCKET_COUNT) {
  return;
 }

 current_bucket = &memstat_bucket[bucket_index];

 p = TAILQ_FIRST(&current_bucket->list);

 while (p) {
  memorystatus_get_task_page_counts(p->task, &pages, ((void*)0), ((void*)0));
  max_pages = pages;
  max_proc = p;
  prev_max_proc = p;

  while ((next_p = TAILQ_NEXT(p, p_memstat_list)) != ((void*)0)) {

   p=next_p;
   memorystatus_get_task_page_counts(p->task, &pages, ((void*)0), ((void*)0));
   if (pages > max_pages) {
    max_pages = pages;
    max_proc = p;
   }
  }

  if (prev_max_proc != max_proc) {

   TAILQ_REMOVE(&current_bucket->list, max_proc, p_memstat_list);
   if (insert_after_proc == ((void*)0)) {
    TAILQ_INSERT_HEAD(&current_bucket->list, max_proc, p_memstat_list);
   } else {
    TAILQ_INSERT_AFTER(&current_bucket->list, insert_after_proc, max_proc, p_memstat_list);
   }
   prev_max_proc = max_proc;
  }

  insert_after_proc = max_proc;

  p = TAILQ_NEXT(max_proc, p_memstat_list);
 }
}
