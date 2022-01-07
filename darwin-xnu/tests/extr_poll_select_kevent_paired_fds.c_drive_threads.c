
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
typedef enum write_mode { ____Placeholder_write_mode } write_mode ;
typedef enum read_mode { ____Placeholder_read_mode } read_mode ;
typedef enum fd_pair { ____Placeholder_fd_pair } fd_pair ;
struct TYPE_3__ {int sem; } ;
struct TYPE_4__ {int fd_pair; int rd_mode; int wr_mode; int rd_fd; TYPE_1__ wr_wait; int wr_kind; int wr_fd; } ;


 int SYNC_POLICY_FIFO ;
 int THREAD_WRITER ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_POSIX_ZERO (int ,int *) ;
 int T_END ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int fd_pair_init (int,int *,int *) ;
 int mach_task_self () ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int read_from_fd (int ,int,int) ;
 int semaphore_create (int ,int *,int ,int ) ;
 TYPE_2__ shared ;
 int write_to_fd ;

__attribute__((used)) static void
drive_threads(enum fd_pair fd_pair, enum read_mode rd_mode,
  enum write_mode wr_mode)
{
 pthread_t thread;

 shared.fd_pair = fd_pair;
 shared.rd_mode = rd_mode;
 shared.wr_mode = wr_mode;
 fd_pair_init(fd_pair, &(shared.rd_fd), &(shared.wr_fd));

 shared.wr_kind = THREAD_WRITER;
 T_ASSERT_MACH_SUCCESS(semaphore_create(mach_task_self(), &shared.wr_wait.sem, SYNC_POLICY_FIFO, 0),
                       "semaphore_create shared.wr_wait.sem");

 T_QUIET;
 T_ASSERT_POSIX_ZERO(pthread_create(&thread, ((void*)0), write_to_fd, ((void*)0)),
   ((void*)0));
 T_LOG("created writer thread");

 read_from_fd(shared.rd_fd, fd_pair, rd_mode);

 T_ASSERT_POSIX_ZERO(pthread_join(thread, ((void*)0)), ((void*)0));

 T_END;
}
