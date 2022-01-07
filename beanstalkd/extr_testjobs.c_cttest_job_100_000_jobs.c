
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TUBE_ASSIGN (int ,int ) ;
 int assertf (int,char*) ;
 int default_tube ;
 int fprintf (int ,char*,int) ;
 int get_all_jobs_used () ;
 int job_find (int) ;
 int job_free (int ) ;
 int make_job (int ,int ,int,int ,int ) ;
 int make_tube (char*) ;
 int stderr ;

void
cttest_job_100_000_jobs()
{
    int i;

    TUBE_ASSIGN(default_tube, make_tube("default"));
    for (i = 0; i < 100000; i++) {
        make_job(0, 0, 1, 0, default_tube);
    }
    assertf(get_all_jobs_used() == 100000, "should match");

    for (i = 1; i <= 100000; i++) {
        job_free(job_find(i));
    }
    fprintf(stderr, "get_all_jobs_used() => %zu\n", get_all_jobs_used());
    assertf(get_all_jobs_used() == 0, "should match");
}
