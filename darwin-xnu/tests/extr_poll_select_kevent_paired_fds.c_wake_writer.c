
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_fd; int out_fd; int sem; } ;
struct TYPE_4__ {int wr_kind; TYPE_1__ wr_wait; } ;




 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int close (int ) ;
 int semaphore_signal (int ) ;
 TYPE_2__ shared ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
wake_writer(void)
{
 T_LOG("waking writer");

 switch (shared.wr_kind) {
 case 128:
  T_LOG("signal shared.wr_wait.sem");
  semaphore_signal(shared.wr_wait.sem);
  break;
 case 129: {
  char tmp = 'a';
  close(shared.wr_wait.out_fd);
  T_QUIET; T_ASSERT_POSIX_SUCCESS(write(
    shared.wr_wait.in_fd, &tmp, 1), ((void*)0));
  break;
 }
 }
}
