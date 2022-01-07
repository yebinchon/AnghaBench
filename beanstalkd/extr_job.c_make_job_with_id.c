
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int uint32 ;
typedef void* int64 ;
typedef int Tube ;
struct TYPE_6__ {void* ttr; void* delay; int pri; scalar_t__ id; } ;
struct TYPE_7__ {int tube; TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 int TUBE_ASSIGN (int ,int *) ;
 TYPE_2__* allocate_job (int) ;
 scalar_t__ next_id ;
 int store_job (TYPE_2__*) ;
 int twarnx (char*) ;

Job *
make_job_with_id(uint32 pri, int64 delay, int64 ttr,
                 int body_size, Tube *tube, uint64 id)
{
    Job *j;

    j = allocate_job(body_size);
    if (!j) {
        twarnx("OOM");
        return (Job *) 0;
    }

    if (id) {
        j->r.id = id;
        if (id >= next_id) next_id = id + 1;
    } else {
        j->r.id = next_id++;
    }
    j->r.pri = pri;
    j->r.delay = delay;
    j->r.ttr = ttr;

    store_job(j);

    TUBE_ASSIGN(j->tube, tube);

    return j;
}
