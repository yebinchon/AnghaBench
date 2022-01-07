
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int BIO_NUM_OPS ;
 size_t DISQUE_THREAD_STACK_SIZE ;
 int LL_WARNING ;
 int bioProcessBackgroundJobs ;
 int * bio_jobs ;
 int * bio_mutex ;
 int * bio_newjob_cond ;
 scalar_t__* bio_pending ;
 int * bio_step_cond ;
 int * bio_threads ;
 int exit (int) ;
 int listCreate () ;
 int pthread_attr_getstacksize (int *,size_t*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setstacksize (int *,size_t) ;
 int pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int pthread_mutex_init (int *,int *) ;
 int serverLog (int ,char*) ;

void bioInit(void) {
    pthread_attr_t attr;
    pthread_t thread;
    size_t stacksize;
    int j;


    for (j = 0; j < BIO_NUM_OPS; j++) {
        pthread_mutex_init(&bio_mutex[j],((void*)0));
        pthread_cond_init(&bio_newjob_cond[j],((void*)0));
        pthread_cond_init(&bio_step_cond[j],((void*)0));
        bio_jobs[j] = listCreate();
        bio_pending[j] = 0;
    }


    pthread_attr_init(&attr);
    pthread_attr_getstacksize(&attr,&stacksize);
    if (!stacksize) stacksize = 1;
    while (stacksize < DISQUE_THREAD_STACK_SIZE) stacksize *= 2;
    pthread_attr_setstacksize(&attr, stacksize);




    for (j = 0; j < BIO_NUM_OPS; j++) {
        void *arg = (void*)(unsigned long) j;
        if (pthread_create(&thread,&attr,bioProcessBackgroundJobs,arg) != 0) {
            serverLog(LL_WARNING,"Fatal: Can't initialize Background Jobs.");
            exit(1);
        }
        bio_threads[j] = thread;
    }
}
