
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sequence_id; } ;
typedef TYPE_1__ hb_job_t ;
typedef scalar_t__ gint ;


 int h_queue ;
 scalar_t__ hb_count (int ) ;
 TYPE_1__* hb_job (int ,int ) ;
 int hb_rem (int ,TYPE_1__*) ;

void
ghb_remove_job(gint unique_id)
{
    hb_job_t * job;
    gint ii;




    ii = hb_count(h_queue) - 1;
    while ((job = hb_job(h_queue, ii--)) != ((void*)0))
    {
        if (job->sequence_id == unique_id)
            hb_rem(h_queue, job);
    }
}
