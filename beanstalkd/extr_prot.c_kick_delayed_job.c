
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int delay; int kick_ct; } ;
struct TYPE_14__ {int walresv; TYPE_2__ r; int heap_index; TYPE_1__* tube; } ;
struct TYPE_13__ {int wal; } ;
struct TYPE_11__ {int delay; } ;
typedef TYPE_3__ Server ;
typedef TYPE_4__ Job ;


 int bury_job (TYPE_3__*,TYPE_4__*,int ) ;
 int enqueue_job (TYPE_3__*,TYPE_4__*,int ,int) ;
 int heapremove (int *,int ) ;
 int walresvupdate (int *) ;

__attribute__((used)) static int
kick_delayed_job(Server *s, Job *j)
{
    int r;
    int z;

    z = walresvupdate(&s->wal);
    if (!z)
        return 0;
    j->walresv += z;

    heapremove(&j->tube->delay, j->heap_index);

    j->r.kick_ct++;
    r = enqueue_job(s, j, 0, 1);
    if (r == 1)
        return 1;


    r = enqueue_job(s, j, j->r.delay, 0);
    if (r == 1)
        return 0;


    bury_job(s, j, 0);
    return 0;
}
