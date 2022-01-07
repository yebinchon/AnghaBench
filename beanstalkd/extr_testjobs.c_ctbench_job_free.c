
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;


 int TUBE_ASSIGN (int ,int ) ;
 int ** calloc (int,int) ;
 int ctresettimer () ;
 int ctstoptimer () ;
 int default_tube ;
 int free (int **) ;
 int job_free (int *) ;
 int * make_job (int ,int ,int,int ,int ) ;
 int make_tube (char*) ;

void
ctbench_job_free(int n)
{
    int i;
    Job **j = calloc(n, sizeof *j);
    TUBE_ASSIGN(default_tube, make_tube("default"));
    for (i = 0; i < n; i++) {
        j[i] = make_job(0, 0, 1, 0, default_tube);
    }

    ctresettimer();
    for (i = 0; i < n; i++) {
        job_free(j[i]);
    }
    ctstoptimer();

    free(j);
}
