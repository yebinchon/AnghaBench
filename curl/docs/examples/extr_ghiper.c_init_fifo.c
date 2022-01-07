
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EEXIST ;
 int MSG_OUT (char*,char const*) ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int S_IFMT ;
 int S_IFREG ;
 int errno ;
 int exit (int) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int mkfifo (char const*,int) ;
 int open (char const*,int,int ) ;
 int perror (char*) ;
 int unlink (char const*) ;

int init_fifo(void)
{
  struct stat st;
  const char *fifo = "hiper.fifo";
  int socket;

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

  socket = open(fifo, O_RDWR | O_NONBLOCK, 0);

  if(socket == -1) {
    perror("open");
    exit(1);
  }
  MSG_OUT("Now, pipe some URL's into > %s\n", fifo);

  return socket;
}
