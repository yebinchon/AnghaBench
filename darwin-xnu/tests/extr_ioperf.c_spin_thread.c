
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int name ;


 int SPIN_SECS ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int pthread_setname_np (char*) ;
 int semaphore ;
 int semaphore_wait_signal (int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 int spin_for_duration (int ) ;
 int worker_sem ;

__attribute__((used)) static void *
spin_thread(void *arg)
{
    uint32_t thread_id = (uint32_t) arg;
    char name[30] = "";

    snprintf(name, sizeof(name), "spin thread %2d", thread_id);
    pthread_setname_np(name);
    T_ASSERT_MACH_SUCCESS(semaphore_wait_signal(semaphore, worker_sem),
            "semaphore_wait_signal");
    spin_for_duration(SPIN_SECS);
    return ((void*)0);
}
