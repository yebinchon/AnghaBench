
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int,char*) ;
 int default_tube ;
 int job_pri_less (int *,int *) ;
 int * make_job (int,int ,int,int ,int ) ;
 int make_tube (char*) ;

void
cttest_job_large_pris()
{
    Job *a, *b;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    a = make_job(1, 0, 1, 0, default_tube);
    b = make_job(-5, 0, 1, 0, default_tube);

    assertf(job_pri_less(a, b), "should be less");

    a = make_job(-5, 0, 1, 0, default_tube);
    b = make_job(1, 0, 1, 0, default_tube);

    assertf(!job_pri_less(a, b), "should not be less");
}
