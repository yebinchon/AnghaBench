
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_job {void* arg3; void* arg2; void* arg1; int time; } ;


 int * bio_jobs ;
 int * bio_mutex ;
 int * bio_newjob_cond ;
 int * bio_pending ;
 int listAddNodeTail (int ,struct bio_job*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int time (int *) ;
 struct bio_job* zmalloc (int) ;

void bioCreateBackgroundJob(int type, void *arg1, void *arg2, void *arg3) {
    struct bio_job *job = zmalloc(sizeof(*job));

    job->time = time(((void*)0));
    job->arg1 = arg1;
    job->arg2 = arg2;
    job->arg3 = arg3;
    pthread_mutex_lock(&bio_mutex[type]);
    listAddNodeTail(bio_jobs[type],job);
    bio_pending[type]++;
    pthread_cond_signal(&bio_newjob_cond[type]);
    pthread_mutex_unlock(&bio_mutex[type]);
}
