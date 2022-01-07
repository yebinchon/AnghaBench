
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_1__ r; int * reserver; } ;
typedef TYPE_2__ Job ;
typedef int Conn ;


 scalar_t__ Reserved ;

__attribute__((used)) static bool
is_job_reserved_by_conn(Conn *c, Job *j)
{
    return j && j->reserver == c && j->r.state == Reserved;
}
