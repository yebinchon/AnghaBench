
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum write_mode { ____Placeholder_write_mode } write_mode ;
typedef enum read_mode { ____Placeholder_read_mode } read_mode ;
typedef enum fd_pair { ____Placeholder_fd_pair } fd_pair ;
typedef int dt_helper_t ;
struct TYPE_3__ {int out_fd; int in_fd; } ;
struct TYPE_4__ {int fd_pair; int rd_mode; int wr_mode; int wr_fd; int rd_fd; TYPE_1__ wr_wait; int wr_kind; } ;


 int PROCESS_WRITER ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int close (int ) ;
 int dt_fork_helper (char*) ;
 int dt_run_helpers (int *,int,int) ;
 int fd_pair_init (int,int *,int *) ;
 int pipe (int*) ;
 TYPE_2__ shared ;

__attribute__((used)) static void __attribute__((noreturn))
drive_processes(enum fd_pair fd_pair, enum read_mode rd_mode, enum write_mode wr_mode)
{
 shared.fd_pair = fd_pair;
 shared.rd_mode = rd_mode;
 shared.wr_mode = wr_mode;
 fd_pair_init(fd_pair, &(shared.rd_fd), &(shared.wr_fd));

 shared.wr_kind = PROCESS_WRITER;
 int fds[2];
 T_QUIET; T_ASSERT_POSIX_SUCCESS(pipe(fds), ((void*)0));
 shared.wr_wait.out_fd = fds[0];
 shared.wr_wait.in_fd = fds[1];

 T_LOG("starting subprocesses");
 dt_helper_t helpers[2] = {
  dt_fork_helper("reader_helper"),
  dt_fork_helper("writer_helper")
 };

 close(shared.rd_fd);
 close(shared.wr_fd);

 dt_run_helpers(helpers, 2, 50000);
}
