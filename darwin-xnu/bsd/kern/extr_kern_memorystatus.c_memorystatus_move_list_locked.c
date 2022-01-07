
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_10__ {int list; } ;
typedef TYPE_2__ memstat_bucket_t ;
struct TYPE_9__ {scalar_t__ p_pid; } ;


 int FALSE ;
 unsigned int MEMSTAT_BUCKET_COUNT ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,int ) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,int ) ;
 TYPE_2__* memstat_bucket ;
 int p_memstat_list ;

__attribute__((used)) static int
memorystatus_move_list_locked(unsigned int bucket_index, pid_t *pid_list, int list_sz)
{
 memstat_bucket_t *current_bucket;
 int i;
 int found_pids = 0;

 if ((pid_list == ((void*)0)) || (list_sz <= 0)) {
  return(0);
 }

 if (bucket_index >= MEMSTAT_BUCKET_COUNT) {
                return(0);
        }

 current_bucket = &memstat_bucket[bucket_index];
 for (i=0; i < list_sz; i++) {
  unsigned int b = bucket_index;
  proc_t p = ((void*)0);
  proc_t aProc = ((void*)0);
  pid_t aPid;
  int list_index;

  list_index = ((list_sz - 1) - i);
                aPid = pid_list[list_index];


                p = memorystatus_get_first_proc_locked(&b, FALSE);
                while (p) {
                        if (p->p_pid == aPid) {
                                aProc = p;
                                break;
                        }
                        p = memorystatus_get_next_proc_locked(&b, p, FALSE);
                }

                if (aProc == ((void*)0)) {

                        continue;
                } else {
                        TAILQ_REMOVE(&current_bucket->list, aProc, p_memstat_list);
                        TAILQ_INSERT_HEAD(&current_bucket->list, aProc, p_memstat_list);
   found_pids++;
                }
        }
 return(found_pids);
}
