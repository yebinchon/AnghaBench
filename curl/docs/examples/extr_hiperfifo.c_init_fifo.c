
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int curl_socket_t ;
struct TYPE_4__ {int fifo_event; int evbase; int input; } ;
typedef TYPE_1__ GlobalInfo ;


 int EEXIST ;
 int EV_PERSIST ;
 int EV_READ ;
 int MSG_OUT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_IFMT ;
 int S_IFREG ;
 int errno ;
 int event_add (int *,int *) ;
 int event_assign (int *,int ,int,int,int ,TYPE_1__*) ;
 int exit (int) ;
 int fdopen (int,char*) ;
 char* fifo ;
 int fifo_cb ;
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
  event_assign(&g->fifo_event, g->evbase, sockfd, EV_READ|EV_PERSIST,
               fifo_cb, g);
  event_add(&g->fifo_event, ((void*)0));
  return (0);
}
