
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_2__ {int thread; } ;


 int SCHED_RR ;
 int T_ASSERT_POSIX_ZERO (int ,char*) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_attr_setschedpolicy (int *,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 TYPE_1__* threads ;

__attribute__((used)) static pthread_t
create_thread(uint32_t thread_id, uint32_t priority, bool fixpri,
        void *(*start_routine)(void *))
{
    int rv;
    pthread_t new_thread;
    struct sched_param param = { .sched_priority = (int)priority };
    pthread_attr_t attr;

    T_ASSERT_POSIX_ZERO(pthread_attr_init(&attr), "pthread_attr_init");

    T_ASSERT_POSIX_ZERO(pthread_attr_setschedparam(&attr, &param),
            "pthread_attr_setschedparam");

    if (fixpri) {
        T_ASSERT_POSIX_ZERO(pthread_attr_setschedpolicy(&attr, SCHED_RR),
                "pthread_attr_setschedpolicy");
    }

    T_ASSERT_POSIX_ZERO(pthread_create(&new_thread, &attr, start_routine,
            (void*)(uintptr_t)thread_id), "pthread_create");

    T_ASSERT_POSIX_ZERO(pthread_attr_destroy(&attr), "pthread_attr_destroy");

    threads[thread_id].thread = new_thread;

    return new_thread;
}
