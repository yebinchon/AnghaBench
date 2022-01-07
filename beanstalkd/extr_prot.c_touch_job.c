
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * soonest_job; } ;
struct TYPE_8__ {scalar_t__ ttr; scalar_t__ deadline_at; } ;
struct TYPE_9__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ Conn ;


 scalar_t__ is_job_reserved_by_conn (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ nanoseconds () ;

__attribute__((used)) static bool
touch_job(Conn *c, Job *j)
{
    if (is_job_reserved_by_conn(c, j)) {
        j->r.deadline_at = nanoseconds() + j->r.ttr;
        c->soonest_job = ((void*)0);
        return 1;
    }
    return 0;
}
