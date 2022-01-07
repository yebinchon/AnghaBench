
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_4__ {scalar_t__ deadline_at; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;
typedef int Conn ;


 scalar_t__ SAFETY_MARGIN ;
 TYPE_2__* connsoonestjob (int *) ;
 scalar_t__ nanoseconds () ;

int
conndeadlinesoon(Conn *c)
{
    int64 t = nanoseconds();
    Job *j = connsoonestjob(c);

    return j && t >= j->r.deadline_at - SAFETY_MARGIN;
}
