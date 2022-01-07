
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** data; int setpos; int less; } ;
typedef int Job ;
typedef TYPE_1__ Heap ;


 int assertf (int *,char*) ;
 int ** calloc (int,int) ;
 int ctresettimer () ;
 int ctstoptimer () ;
 int free (int **) ;
 int heapinsert (TYPE_1__*,int *) ;
 scalar_t__ heapremove (TYPE_1__*,int ) ;
 int job_free (int *) ;
 int job_pri_less ;
 int job_setpos ;
 int * make_job (int,int ,int,int ,int ) ;

void
ctbench_heap_remove(int n)
{
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };
    int i;
    for (i = 0; i < n; i++) {
        Job *j = make_job(1, 0, 1, 0, 0);
        assertf(j, "allocate job");
        heapinsert(&h, j);
    }
    Job **jj = calloc(n, sizeof(Job *));

    ctresettimer();
    for (i = 0; i < n; i++) {
        jj[i] = (Job *)heapremove(&h, 0);
    }
    ctstoptimer();

    free(h.data);
    for (i = 0; i < n; i++)
        job_free(jj[i]);
    free(jj);
}
