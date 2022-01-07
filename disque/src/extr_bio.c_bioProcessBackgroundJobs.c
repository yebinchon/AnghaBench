
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio_job {scalar_t__ arg1; } ;
typedef int sigset_t ;
struct TYPE_4__ {struct bio_job* value; } ;
typedef TYPE_1__ listNode ;


 unsigned long BIO_AOF_FSYNC ;
 unsigned long BIO_CLOSE_FILE ;
 int LL_WARNING ;
 int PTHREAD_CANCEL_ASYNCHRONOUS ;
 int PTHREAD_CANCEL_ENABLE ;
 int SIGALRM ;
 int SIG_BLOCK ;
 int aof_fsync (long) ;
 int * bio_jobs ;
 int * bio_mutex ;
 int * bio_newjob_cond ;
 int * bio_pending ;
 int * bio_step_cond ;
 int close (long) ;
 int errno ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_setcanceltype (int ,int *) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int serverLog (int ,char*,int ) ;
 int serverPanic (char*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int strerror (int ) ;
 int zfree (struct bio_job*) ;

void *bioProcessBackgroundJobs(void *arg) {
    struct bio_job *job;
    unsigned long type = (unsigned long) arg;
    sigset_t sigset;



    pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, ((void*)0));
    pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS, ((void*)0));

    pthread_mutex_lock(&bio_mutex[type]);


    sigemptyset(&sigset);
    sigaddset(&sigset, SIGALRM);
    if (pthread_sigmask(SIG_BLOCK, &sigset, ((void*)0)))
        serverLog(LL_WARNING,
            "Warning: can't mask SIGALRM in bio.c thread: %s", strerror(errno));

    while(1) {
        listNode *ln;


        if (listLength(bio_jobs[type]) == 0) {
            pthread_cond_wait(&bio_newjob_cond[type],&bio_mutex[type]);
            continue;
        }

        ln = listFirst(bio_jobs[type]);
        job = ln->value;


        pthread_mutex_unlock(&bio_mutex[type]);


        if (type == BIO_CLOSE_FILE) {
            close((long)job->arg1);
        } else if (type == BIO_AOF_FSYNC) {
            aof_fsync((long)job->arg1);
        } else {
            serverPanic("Wrong job type in bioProcessBackgroundJobs().");
        }
        zfree(job);


        pthread_cond_broadcast(&bio_step_cond[type]);



        pthread_mutex_lock(&bio_mutex[type]);
        listDelNode(bio_jobs[type],ln);
        bio_pending[type]--;
    }
}
