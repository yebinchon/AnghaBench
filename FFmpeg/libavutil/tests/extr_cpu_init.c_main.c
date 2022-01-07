
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int fprintf (int ,char*,char*) ;
 int pthread_create (int *,int *,int ,int*) ;
 int pthread_join (int ,int *) ;
 int stderr ;
 char* strerror (int) ;
 int thread_main ;

int main(void)
{
    int cpu_flags1;
    int cpu_flags2;
    int ret;
    pthread_t thread1;
    pthread_t thread2;

    if ((ret = pthread_create(&thread1, ((void*)0), thread_main, &cpu_flags1))) {
        fprintf(stderr, "pthread_create failed: %s.\n", strerror(ret));
        return 1;
    }
    if ((ret = pthread_create(&thread2, ((void*)0), thread_main, &cpu_flags2))) {
        fprintf(stderr, "pthread_create failed: %s.\n", strerror(ret));
        return 1;
    }
    pthread_join(thread1, ((void*)0));
    pthread_join(thread2, ((void*)0));

    if (cpu_flags1 < 0)
        return 2;
    if (cpu_flags2 < 0)
        return 2;
    if (cpu_flags1 != cpu_flags2)
        return 3;

    return 0;
}
