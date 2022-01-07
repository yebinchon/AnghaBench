
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {scalar_t__ state; } ;
struct TYPE_17__ {TYPE_1__ r; } ;
struct TYPE_16__ {int fd; } ;
struct TYPE_15__ {int type; scalar_t__ in_conns; int tickpos; TYPE_2__* srv; TYPE_11__* use; int watch; scalar_t__ in_job_read; TYPE_6__* out_job; TYPE_6__* in_job; TYPE_4__ sock; } ;
struct TYPE_14__ {int conns; } ;
struct TYPE_12__ {int using_ct; } ;
typedef TYPE_3__ Conn ;


 int CONN_TYPE_PRODUCER ;
 int CONN_TYPE_WORKER ;
 scalar_t__ Copy ;
 int TUBE_ASSIGN (TYPE_11__*,int *) ;
 int close (int) ;
 int cur_conn_ct ;
 int cur_producer_ct ;
 int cur_worker_ct ;
 int enqueue_reserved_jobs (TYPE_3__*) ;
 int free (TYPE_3__*) ;
 scalar_t__ has_reserved_job (TYPE_3__*) ;
 int heapremove (int *,int ) ;
 int job_free (TYPE_6__*) ;
 int ms_clear (int *) ;
 int printf (char*,int) ;
 int remove_waiting_conn (TYPE_3__*) ;
 int sockwant (TYPE_4__*,int ) ;
 scalar_t__ verbose ;

void
connclose(Conn *c)
{
    sockwant(&c->sock, 0);
    close(c->sock.fd);
    if (verbose) {
        printf("close %d\n", c->sock.fd);
    }

    job_free(c->in_job);


    if (c->out_job && c->out_job->r.state == Copy)
        job_free(c->out_job);

    c->in_job = c->out_job = ((void*)0);
    c->in_job_read = 0;

    if (c->type & CONN_TYPE_PRODUCER) cur_producer_ct--;
    if (c->type & CONN_TYPE_WORKER) cur_worker_ct--;

    cur_conn_ct--;

    remove_waiting_conn(c);
    if (has_reserved_job(c))
        enqueue_reserved_jobs(c);

    ms_clear(&c->watch);
    c->use->using_ct--;
    TUBE_ASSIGN(c->use, ((void*)0));

    if (c->in_conns) {
        heapremove(&c->srv->conns, c->tickpos);
        c->in_conns = 0;
    }

    free(c);
}
