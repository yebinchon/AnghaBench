
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_5__ {int next; } ;
struct TYPE_6__ {TYPE_1__ buried; } ;
typedef TYPE_2__ Tube ;
typedef int Server ;


 scalar_t__ buried_job_p (TYPE_2__*) ;
 int kick_buried_job (int *,int ) ;

__attribute__((used)) static uint
kick_buried_jobs(Server *s, Tube *t, uint n)
{
    uint i;
    for (i = 0; (i < n) && buried_job_p(t); ++i) {
        kick_buried_job(s, t->buried.next);
    }
    return i;
}
