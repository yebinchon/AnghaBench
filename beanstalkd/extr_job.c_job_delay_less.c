
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ deadline_at; scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;



int
job_delay_less(void *ja, void *jb)
{
    Job *a = ja;
    Job *b = jb;
    if (a->r.deadline_at < b->r.deadline_at) return 1;
    if (a->r.deadline_at > b->r.deadline_at) return 0;
    return a->r.id < b->r.id;
}
