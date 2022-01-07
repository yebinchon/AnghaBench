
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_8__ {TYPE_1__* soonest_job; TYPE_1__ reserved_jobs; } ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ Conn ;


 int conn_set_soonestjob (TYPE_2__*,TYPE_1__*) ;

Job *
connsoonestjob(Conn *c)
{

    if (c->soonest_job != ((void*)0))
        return c->soonest_job;

    Job *j = ((void*)0);
    for (j = c->reserved_jobs.next; j != &c->reserved_jobs; j = j->next) {
        conn_set_soonestjob(c, j);
    }
    return c->soonest_job;
}
