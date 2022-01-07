
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int curl_socket_t ;
struct TYPE_3__ {int fifo_event; int loop; int input; } ;
typedef TYPE_1__ GlobalInfo ;


 int EEXIST ;
 int EV_READ ;
 int MSG_OUT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_IFMT ;
 int S_IFREG ;
 int errno ;
 int ev_io_init (int *,int ,int,int ) ;
 int ev_io_start (int ,int *) ;
 int exit (int) ;
 int fdopen (int,char*) ;
 int fifo_cb ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int mkfifo (char const*,int) ;
 int open (char const*,int,int ) ;
 int perror (char*) ;
 int unlink (char const*) ;

__attribute__((used)) static int init_fifo(GlobalInfo *g)
{
  struct stat st;
  static const char *fifo = "hiper.fifo";
  curl_socket_t sockfd;

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
  g->input = fdopen(sockfd, "r");

  fprintf(MSG_OUT, "Now, pipe some URL's into > %s\n", fifo);
  ev_io_init(&g->fifo_event, fifo_cb, sockfd, EV_READ);
  ev_io_start(g->loop, &g->fifo_event);
  return (0);
}
