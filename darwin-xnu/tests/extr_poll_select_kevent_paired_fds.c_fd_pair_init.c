
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fd_pair { ____Placeholder_fd_pair } fd_pair ;


 int AF_UNIX ;

 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;



 int SOCK_STREAM ;
 int T_ASSERT_FAIL (char*,int) ;
 int T_ASSERT_NE (int,int,char*) ;
 int T_ASSERT_NOTNULL (int ,int *) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,...) ;
 int T_QUIET ;
 int mkfifo (char*,int) ;
 int mktemp (char*) ;
 int open (char*,int) ;
 int openpty (int*,int*,int *,int *,int *) ;
 int pipe (int*) ;
 int socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static void
fd_pair_init(enum fd_pair fd_pair, int *rd_fd, int *wr_fd)
{
 switch (fd_pair) {
 case 129:
  T_ASSERT_POSIX_SUCCESS(openpty(rd_fd, wr_fd, ((void*)0), ((void*)0), ((void*)0)),
    ((void*)0));
  break;

 case 131: {
  char fifo_path[] = "/tmp/async-io-fifo.XXXXXX";
  T_QUIET; T_ASSERT_NOTNULL(mktemp(fifo_path), ((void*)0));

  T_ASSERT_POSIX_SUCCESS(mkfifo(fifo_path, 0700), "mkfifo(%s, 0700)",
    fifo_path);




  *rd_fd = open(fifo_path, O_RDONLY | O_NONBLOCK);
  T_QUIET; T_ASSERT_POSIX_SUCCESS(*rd_fd, "open(... O_RDONLY)");
  *wr_fd = open(fifo_path, O_WRONLY | O_NONBLOCK);
  T_QUIET; T_ASSERT_POSIX_SUCCESS(*wr_fd, "open(... O_WRONLY)");
  break;
 }

 case 130: {
  int pipe_fds[2];
  T_ASSERT_POSIX_SUCCESS(pipe(pipe_fds), ((void*)0));
  *rd_fd = pipe_fds[0];
  *wr_fd = pipe_fds[1];
  break;
 }

 case 128: {
  int sock_fds[2];
  T_ASSERT_POSIX_SUCCESS(socketpair(AF_UNIX, SOCK_STREAM, 0, sock_fds),
    ((void*)0));
  *rd_fd = sock_fds[0];
  *wr_fd = sock_fds[1];
  break;
 }

 default:
  T_ASSERT_FAIL("unknown descriptor pair type: %d", fd_pair);
  break;
 }

 T_QUIET; T_ASSERT_NE(*rd_fd, -1, "reading descriptor");
 T_QUIET; T_ASSERT_NE(*wr_fd, -1, "writing descriptor");
}
