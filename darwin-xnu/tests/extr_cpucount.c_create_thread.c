
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_create (int *,int *,void* (*) (void*),int *) ;
 int set_realtime (int ) ;

__attribute__((used)) static pthread_t
create_thread(void *(*start_routine)(void *), uint32_t priority)
{
 int rv;
 pthread_t new_thread;
 pthread_attr_t attr;

 struct sched_param param = { .sched_priority = (int)priority };

 rv = pthread_attr_init(&attr);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_attr_init");

 rv = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_attr_setdetachstate");

 rv = pthread_attr_setschedparam(&attr, &param);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_attr_setschedparam");

 rv = pthread_create(&new_thread, &attr, start_routine, ((void*)0));
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_create");

 if (priority == 97)
  set_realtime(new_thread);

 rv = pthread_attr_destroy(&attr);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_attr_destroy");

 return new_thread;
}
