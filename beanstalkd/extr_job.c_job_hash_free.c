
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {struct TYPE_6__* ht_next; TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 size_t _get_job_hash_index (int ) ;
 TYPE_2__** all_jobs ;
 int all_jobs_cap ;
 int all_jobs_used ;
 int rehash (int ) ;

__attribute__((used)) static void
job_hash_free(Job *j)
{
    Job **slot;

    slot = &all_jobs[_get_job_hash_index(j->r.id)];
    while (*slot && *slot != j) slot = &(*slot)->ht_next;
    if (*slot) {
        *slot = (*slot)->ht_next;
        --all_jobs_used;
    }


    if (all_jobs_used < (all_jobs_cap >> 4)) rehash(0);
}
