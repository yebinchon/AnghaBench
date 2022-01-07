
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_6__ {struct TYPE_6__* ht_next; TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 int _get_job_hash_index (scalar_t__) ;
 TYPE_2__** all_jobs ;

Job *
job_find(uint64 job_id)
{
    int index = _get_job_hash_index(job_id);
    Job *jh = all_jobs[index];

    while (jh && jh->r.id != job_id)
        jh = jh->ht_next;

    return jh;
}
