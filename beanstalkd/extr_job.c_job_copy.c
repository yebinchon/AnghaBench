
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int state; scalar_t__ body_size; } ;
struct TYPE_10__ {TYPE_1__ r; scalar_t__ tube; int * file; } ;
typedef TYPE_2__ Job ;


 int Copy ;
 int TUBE_ASSIGN (scalar_t__,scalar_t__) ;
 int job_list_reset (TYPE_2__*) ;
 TYPE_2__* malloc (scalar_t__) ;
 int memcpy (TYPE_2__*,TYPE_2__*,scalar_t__) ;
 int twarnx (char*) ;

Job *
job_copy(Job *j)
{
    if (!j)
        return ((void*)0);

    Job *n = malloc(sizeof(Job) + j->r.body_size);
    if (!n) {
        twarnx("OOM");
        return (Job *) 0;
    }

    memcpy(n, j, sizeof(Job) + j->r.body_size);
    job_list_reset(n);

    n->file = ((void*)0);

    n->tube = 0;
    TUBE_ASSIGN(n->tube, j->tube);


    n->r.state = Copy;

    return n;
}
