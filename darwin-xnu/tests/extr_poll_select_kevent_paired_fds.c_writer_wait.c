
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_5__ {int out_fd; int in_fd; int sem; } ;
struct TYPE_6__ {int wr_kind; TYPE_1__ wr_wait; } ;


 int KERN_OPERATION_TIMED_OUT ;

 TYPE_3__ READ_SETUP_timeout ;

 int T_ASSERT_FAIL (char*,int ) ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int close (int ) ;
 int read (int ,char*,int) ;
 int semaphore_timedwait (int ,TYPE_3__) ;
 TYPE_2__ shared ;

__attribute__((used)) static void
writer_wait(void)
{
 switch (shared.wr_kind) {
 case 128:
  T_LOG("wait shared.wr_wait.sem");
  kern_return_t kret = semaphore_timedwait(shared.wr_wait.sem, READ_SETUP_timeout);

  if (kret == KERN_OPERATION_TIMED_OUT) {
   T_ASSERT_FAIL("THREAD_WRITER semaphore timedout after %d seconds", READ_SETUP_timeout.tv_sec);
  }
  T_QUIET;
  T_ASSERT_MACH_SUCCESS(kret, "semaphore_timedwait shared.wr_wait.sem");
  break;

 case 129: {
  char tmp;
  close(shared.wr_wait.in_fd);
  T_QUIET; T_ASSERT_POSIX_SUCCESS(read(
    shared.wr_wait.out_fd, &tmp, 1), ((void*)0));
  break;
 }
 }

 T_LOG("writer woken up, starting to write");
}
