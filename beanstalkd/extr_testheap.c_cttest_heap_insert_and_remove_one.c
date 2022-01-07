
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; int setpos; int less; } ;
typedef int Job ;
typedef TYPE_1__ Heap ;


 int assertf (int,char*) ;
 int free (int ) ;
 int heapinsert (TYPE_1__*,int *) ;
 int * heapremove (TYPE_1__*,int ) ;
 int job_free (int *) ;
 int job_pri_less ;
 int job_setpos ;
 int * make_job (int,int ,int,int ,int ) ;

void
cttest_heap_insert_and_remove_one()
{
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };

    Job *j1 = make_job(1, 0, 1, 0, 0);
    assertf(j1, "allocate job");

    int r = heapinsert(&h, j1);
    assertf(r, "insert should succeed");

    Job *got = heapremove(&h, 0);
    assertf(got == j1, "j1 should come back out");
    assertf(h.len == 0, "h should be empty.");

    free(h.data);
    job_free(j1);
}
