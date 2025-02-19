
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int reserved_ct; } ;
struct TYPE_15__ {int next; } ;
struct TYPE_14__ {int * soonest_job; int srv; TYPE_6__ reserved_jobs; } ;
struct TYPE_13__ {TYPE_2__* tube; } ;
struct TYPE_11__ {int reserved_ct; } ;
struct TYPE_12__ {TYPE_1__ stat; } ;
typedef TYPE_3__ Job ;
typedef TYPE_4__ Conn ;


 int bury_job (int ,TYPE_3__*,int ) ;
 int enqueue_job (int ,TYPE_3__*,int ,int ) ;
 TYPE_7__ global_stat ;
 int job_list_is_empty (TYPE_6__*) ;
 TYPE_3__* job_list_remove (int ) ;

void
enqueue_reserved_jobs(Conn *c)
{
    while (!job_list_is_empty(&c->reserved_jobs)) {
        Job *j = job_list_remove(c->reserved_jobs.next);
        int r = enqueue_job(c->srv, j, 0, 0);
        if (r < 1)
            bury_job(c->srv, j, 0);
        global_stat.reserved_ct--;
        j->tube->stat.reserved_ct--;
        c->soonest_job = ((void*)0);
    }
}
