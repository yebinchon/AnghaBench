
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int ,char*) ;
 int default_tube ;
 int job_pri_less (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* make_job (int,int ,int,int ,int ) ;
 int make_tube (char*) ;

void
cttest_job_cmp_ids()
{
    Job *a, *b;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    a = make_job(1, 0, 1, 0, default_tube);
    b = make_job(1, 0, 1, 0, default_tube);

    b->r.id <<= 49;
    assertf(job_pri_less(a, b), "should be less");
}
