
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int buried_ct; } ;
struct TYPE_13__ {int bury_ct; int state; } ;
struct TYPE_15__ {int walresv; TYPE_3__ r; int * reserver; TYPE_2__* tube; } ;
struct TYPE_14__ {int wal; } ;
struct TYPE_11__ {int buried_ct; } ;
struct TYPE_12__ {TYPE_1__ stat; int buried; } ;
typedef TYPE_4__ Server ;
typedef TYPE_5__ Job ;


 int Buried ;
 TYPE_8__ global_stat ;
 int job_list_insert (int *,TYPE_5__*) ;
 int walmaint (int *) ;
 int walresvupdate (int *) ;
 int walwrite (int *,TYPE_5__*) ;

__attribute__((used)) static int
bury_job(Server *s, Job *j, char update_store)
{
    if (update_store) {
        int z = walresvupdate(&s->wal);
        if (!z)
            return 0;
        j->walresv += z;
    }

    job_list_insert(&j->tube->buried, j);
    global_stat.buried_ct++;
    j->tube->stat.buried_ct++;
    j->r.state = Buried;
    j->reserver = ((void*)0);
    j->r.bury_ct++;

    if (update_store) {
        if (!walwrite(&s->wal, j)) {
            return 0;
        }
        walmaint(&s->wal);
    }

    return 1;
}
