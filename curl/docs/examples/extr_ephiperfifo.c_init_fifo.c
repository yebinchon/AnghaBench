
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int curl_socket_t ;
struct TYPE_5__ {int fifofd; int epfd; int input; } ;
typedef TYPE_2__ GlobalInfo ;


 int EEXIST ;
 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int MSG_OUT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_IFMT ;
 int S_IFREG ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int errno ;
 int exit (int) ;
 int fdopen (int,char*) ;
 char* fifo ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int mkfifo (char*,int) ;
 int open (char*,int,int ) ;
 int perror (char*) ;
 int unlink (char*) ;

__attribute__((used)) static int init_fifo(GlobalInfo *g)
{
  struct stat st;
  curl_socket_t sockfd;
  struct epoll_event epev;

  fprintf(MSG_OUT, "Creating named pipe \"%s\"\n", fifo);
  if(lstat (fifo, &st) == 0) {
    if((st.st_mode & S_IFMT) == S_IFREG) {
      errno = EEXIST;
      perror("lstat");
      exit(1);
    }
  }
  unlink(fifo);
  if(mkfifo (fifo, 0600) == -1) {
    perror("mkfifo");
    exit(1);
  }
  sockfd = open(fifo, O_RDWR | O_NONBLOCK, 0);
  if(sockfd == -1) {
    perror("open");
    exit(1);
  }

  g->fifofd = sockfd;
  g->input = fdopen(sockfd, "r");

  epev.events = EPOLLIN;
  epev.data.fd = sockfd;
  epoll_ctl(g->epfd, EPOLL_CTL_ADD, sockfd, &epev);

  fprintf(MSG_OUT, "Now, pipe some URL's into > %s\n", fifo);
  return 0;
}
