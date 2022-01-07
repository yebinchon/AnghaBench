
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int * allocate_job (int) ;
 int assertf (int,char*) ;
 int default_tube ;
 int get_all_jobs_used () ;
 int job_free (int *) ;
 int * make_job (int ,int ,int,int ,int ) ;
 int make_tube (char*) ;

void
cttest_job_all_jobs_used()
{
    Job *j, *x;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    j = make_job(0, 0, 1, 0, default_tube);
    assertf(get_all_jobs_used() == 1, "should match");

    x = allocate_job(10);
    assertf(get_all_jobs_used() == 1, "should match");

    job_free(x);
    assertf(get_all_jobs_used() == 1, "should match");

    job_free(j);
    assertf(get_all_jobs_used() == 0, "should match");
}
