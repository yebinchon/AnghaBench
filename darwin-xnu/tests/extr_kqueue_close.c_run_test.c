
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int close (int) ;
 int kqueue () ;
 int poll_kqueue ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int timeout_ms ;
 int usleep (int) ;

__attribute__((used)) static void
run_test()
{
 int fd = kqueue();
 T_QUIET; T_ASSERT_POSIX_SUCCESS(fd, "kqueue");

 pthread_t thread;
 int rv = pthread_create(&thread, ((void*)0), poll_kqueue,
                         (void *)(uintptr_t)fd);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_create");

 usleep(timeout_ms * 1000);

 rv = close(fd);
 T_ASSERT_POSIX_SUCCESS(rv, "close");

 rv = pthread_join(thread, ((void*)0));
 T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "pthread_join");
}
