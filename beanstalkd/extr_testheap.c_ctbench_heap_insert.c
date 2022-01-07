
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__** data; int setpos; int less; } ;
struct TYPE_11__ {int id; int pri; } ;
struct TYPE_12__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ Heap ;


 int assert (TYPE_2__*) ;
 TYPE_2__** calloc (int,int) ;
 int ctresettimer () ;
 int ctstoptimer () ;
 int free (TYPE_2__**) ;
 int heapinsert (TYPE_3__*,TYPE_2__*) ;
 int heapremove (TYPE_3__*,int ) ;
 int job_free (int ) ;
 int job_pri_less ;
 int job_setpos ;
 TYPE_2__* make_job (int,int ,int,int ,int ) ;

void
ctbench_heap_insert(int n)
{
    Job **j = calloc(n, sizeof *j);
    int i;
    for (i = 0; i < n; i++) {
        j[i] = make_job(1, 0, 1, 0, 0);
        assert(j[i]);
        j[i]->r.pri = -j[i]->r.id;
    }
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };

    ctresettimer();
    for (i = 0; i < n; i++) {
        heapinsert(&h, j[i]);
    }
    ctstoptimer();

    for (i = 0; i < n; i++)
        job_free(heapremove(&h, 0));
    free(h.data);
    free(j);
}
