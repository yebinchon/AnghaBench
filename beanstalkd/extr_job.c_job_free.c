
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_7__ {TYPE_1__ r; int tube; } ;
typedef TYPE_2__ Job ;


 scalar_t__ Copy ;
 int TUBE_ASSIGN (int ,int *) ;
 int free (TYPE_2__*) ;
 int job_hash_free (TYPE_2__*) ;

void
job_free(Job *j)
{
    if (j) {
        TUBE_ASSIGN(j->tube, ((void*)0));
        if (j->r.state != Copy) job_hash_free(j);
    }

    free(j);
}
