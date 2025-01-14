
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_10__ {scalar_t__ limit; int state; int user_data; int priority; int pid; } ;
typedef TYPE_2__ memorystatus_priority_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ p_memstat_memlimit; int task; int p_memstat_userdata; int p_memstat_effectivepriority; int p_pid; } ;


 int EINVAL ;
 int ENOMEM ;
 int MEMORYSTATUS_DEBUG (int,char*,unsigned long) ;
 int TRUE ;
 scalar_t__ kalloc (size_t) ;
 int memorystatus_build_state (TYPE_1__*) ;
 TYPE_1__* memorystatus_get_first_proc_locked (int*,int ) ;
 TYPE_1__* memorystatus_get_next_proc_locked (int*,TYPE_1__*,int ) ;
 int memorystatus_list_count ;
 int memset (TYPE_2__*,int ,size_t) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int task_get_phys_footprint_limit (int ,scalar_t__*) ;

__attribute__((used)) static int
memorystatus_get_priority_list(memorystatus_priority_entry_t **list_ptr, size_t *buffer_size, size_t *list_size, boolean_t size_only)
{
  uint32_t list_count, i = 0;
 memorystatus_priority_entry_t *list_entry;
 proc_t p;

  list_count = memorystatus_list_count;
 *list_size = sizeof(memorystatus_priority_entry_t) * list_count;


 if (size_only) {
  return 0;
 }


 if (*buffer_size < *list_size) {
  return EINVAL;
 }

  *list_ptr = (memorystatus_priority_entry_t*)kalloc(*list_size);
 if (!*list_ptr) {
  return ENOMEM;
 }

 memset(*list_ptr, 0, *list_size);

 *buffer_size = *list_size;
 *list_size = 0;

 list_entry = *list_ptr;

 proc_list_lock();

 p = memorystatus_get_first_proc_locked(&i, TRUE);
 while (p && (*list_size < *buffer_size)) {
  list_entry->pid = p->p_pid;
  list_entry->priority = p->p_memstat_effectivepriority;
  list_entry->user_data = p->p_memstat_userdata;

  if (p->p_memstat_memlimit <= 0) {
                        task_get_phys_footprint_limit(p->task, &list_entry->limit);
                } else {
                        list_entry->limit = p->p_memstat_memlimit;
                }

  list_entry->state = memorystatus_build_state(p);
  list_entry++;

  *list_size += sizeof(memorystatus_priority_entry_t);

  p = memorystatus_get_next_proc_locked(&i, p, TRUE);
 }

 proc_list_unlock();

 MEMORYSTATUS_DEBUG(1, "memorystatus_get_priority_list: returning %lu for size\n", (unsigned long)*list_size);

 return 0;
}
