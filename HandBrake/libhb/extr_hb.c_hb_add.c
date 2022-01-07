
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sequence_id; TYPE_2__* h; } ;
typedef TYPE_1__ hb_job_t ;
struct TYPE_9__ {int sequence_id; int jobs; } ;
typedef TYPE_2__ hb_handle_t ;


 TYPE_1__* hb_job_copy (TYPE_1__*) ;
 int hb_list_add (int ,TYPE_1__*) ;

int hb_add( hb_handle_t * h, hb_job_t * job )
{
    hb_job_t *job_copy = hb_job_copy(job);
    job_copy->h = h;
    job_copy->sequence_id = ++h->sequence_id;
    hb_list_add(h->jobs, job_copy);

    return job_copy->sequence_id;
}
