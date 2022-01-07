
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int atoi (char*) ;
 scalar_t__ calloc (int,int) ;
 int err (int,char*) ;
 char** newargv ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int usage () ;
 int work ;

int main(int argc, char *argv[]) {

    int i, count, threadcount;
    int ret;
    pthread_t *threads;

    if (argc < 4) {
        usage();
    }

    threadcount = atoi(argv[1]);
    count = atoi(argv[2]);

    newargv = &argv[3];

    threads = (pthread_t *)calloc(threadcount, sizeof(pthread_t));
    for (i=0; i < threadcount; i++) {
        ret = pthread_create(&threads[i], ((void*)0), work, (void *)(intptr_t)count);
        if (ret) {
            err(1, "pthread_create");
        }
    }

    for (i=0; i < threadcount; i++) {
        ret = pthread_join(threads[i], ((void*)0));
        if (ret) {
            err(1, "pthread_join");
        }
    }

    return 0;
}
